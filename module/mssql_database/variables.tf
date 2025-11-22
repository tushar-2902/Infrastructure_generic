variable "mssql_database" {
  type = map(object({
    mssql_database_name=string 
    mssql_server_name=string
    rg_name=string
  }))
}