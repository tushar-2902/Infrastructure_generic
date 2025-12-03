resource "azurerm_network_interface" "example" {
  for_each = var.vm
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.example[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.example[each.key].id
  }
}

resource "azurerm_linux_virtual_machine" "example" {
  depends_on = [ azurerm_network_interface.example ]
  for_each = var.vm
  name                = each.value.vm_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  size                = "Standard_D2s_v3"
  admin_username      = each.value.admin_username
  admin_password     =  data.azurerm_key_vault_secret.vm_detail[each.key].value
  disable_password_authentication = "false"
  network_interface_ids = [
    azurerm_network_interface.example[each.key].id,
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

resource "azurerm_network_interface_security_group_association" "example" {
  for_each = var.vm

  network_interface_id      = azurerm_network_interface.example[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg[each.key].id
}
