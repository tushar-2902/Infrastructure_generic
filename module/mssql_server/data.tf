data "azurerm_key_vault" "kv" {
  for_each =  var.mssql_server
  name                = each.value.key_name
  resource_group_name = each.value.rg_name
}

data "azurerm_key_vault_secret" "mssql_name" {
  for_each =  var.mssql_server
  name         = each.value.secret_name
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}

data "azurerm_key_vault_secret" "mssql_password" {
  for_each =  var.mssql_server
  name         = each.value.secret_password
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}