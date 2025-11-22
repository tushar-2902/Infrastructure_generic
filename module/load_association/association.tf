resource "azurerm_network_interface_backend_address_pool_association" "example" {
  for_each = var.association
  network_interface_id    = data.azurerm_network_interface.example[each.key].id
  ip_configuration_name   = "internal"
  backend_address_pool_id = data.azurerm_lb_backend_address_pool.example[each.key].id
}

