resource "azurerm_lb_backend_address_pool" "example" {
    for_each = var.lb
  loadbalancer_id = azurerm_lb.example[each.key].id
  name            = each.value.backened_pool_name
}


