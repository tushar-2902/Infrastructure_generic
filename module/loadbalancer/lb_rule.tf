resource "azurerm_lb_rule" "example" {
  for_each = var.lb
  loadbalancer_id                = azurerm_lb.example[each.key].id
  name                           = "lb-rule"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80

  frontend_ip_configuration_name = "lb-frontend"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.example[each.key].id]
  probe_id                       = azurerm_lb_probe.example[each.key].id
}