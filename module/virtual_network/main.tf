resource "azurerm_network_security_group" "example" {
  for_each = var.vn
  name                = each.value.nsg_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
}

resource "azurerm_network_security_rule" "allow_http" {
  depends_on = [ azurerm_network_security_group.example ]
  for_each = var.vn
  name                        = "allow-http"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range            = "*"
  destination_port_range       = "80"
  source_address_prefix        = "*"
  destination_address_prefix   = "*"
  resource_group_name          = each.value.rg_name
  network_security_group_name  = azurerm_network_security_group.example[each.key].name
}

resource "azurerm_virtual_network" "example" {
  for_each = var.vn
  name                = each.value.vn_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  dynamic "subnet" {
    for_each = each.value.subnets
    content {
    name             = subnet.value.sb_name
    address_prefixes = subnet.value.address_prefixes
    }
  }
  
}


