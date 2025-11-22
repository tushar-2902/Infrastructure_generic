data "azurerm_mssql_server" "example" {
  for_each = var.mssql_database
  name                = each.value.mssql_server_name
  resource_group_name = each.value.rg_name
}

