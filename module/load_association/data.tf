data "azurerm_network_interface" "example" {
    for_each = var.association
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}

data "azurerm_lb_backend_address_pool" "example" {
    for_each = var.association
  name            = each.value.backened_pool_name   
  loadbalancer_id = data.azurerm_lb.example[each.key].id      
}

data "azurerm_lb" "example" {
  for_each = var.association
  name                = each.value.lb_name
  resource_group_name = each.value.rg_name
}
