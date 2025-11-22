resource "azurerm_lb" "example" {
  for_each = var.lb
  name                = each.value.lb_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  frontend_ip_configuration {
    name                 = "lb-frontend"
    public_ip_address_id = data.azurerm_public_ip.example.id
  }
}

