resource "azurerm_key_vault_secret" "example" {
  for_each = var.secret
  name         = each.value.secret_name
  value        = each.value.secret_value
  key_vault_id = data.azurerm_key_vault.example[each.key].id
}

