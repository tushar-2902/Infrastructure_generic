resource "azurerm_mssql_database" "example" {
  for_each = var.mssql_database
  name         = each.value.mssql_database_name
  server_id    = data.azurerm_mssql_server.example[each.key].id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"


}

