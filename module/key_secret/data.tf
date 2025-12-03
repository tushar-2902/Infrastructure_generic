data "azurerm_key_vault" "example" {
  for_each = var.secret
  name                = each.value.key_name   # existing Key Vault name
  resource_group_name = each.value.rg_name            # RG in which KV exists
}