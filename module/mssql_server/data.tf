data "azurerm_key_vault" "kv" {
  for_each =  var.mssql_server
  name                = each.value.key_name
  resource_group_name = each.value.rg_name
}

data "azurerm_key_vault_secret" "mssql_detail" {
  for_each =  var.mssql_server
  name         = each.value.server_name
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}
