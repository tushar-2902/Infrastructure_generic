resource "azurerm_lb_probe" "example" {
  for_each = var.lb
  loadbalancer_id = azurerm_lb.example[each.key].id
  name            = "http-probe"
  protocol        = "Tcp"
  port            = 80
}