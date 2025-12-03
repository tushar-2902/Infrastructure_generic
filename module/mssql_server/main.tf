
resource "azurerm_mssql_server" "example" {
  for_each = var.mssql_server
  name                         = each.value.mssql_server_name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = "sqladminuser"
  administrator_login_password = data.azurerm_key_vault_secret.mssql_detail[each.key].value
  minimum_tls_version          = "1.2"
}

