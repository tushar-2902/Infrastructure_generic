variable "rg_env" {
  type = map(object({
    rg_name = string
    location = string
  }))
}

variable "vn_env"{
  type = map(object({
     nsg_name= string
     location = string
     rg_name =string
     vn_name =string
     subnets= optional(map(object({
       sb_name = string
       address_prefixes = list(string)
     })))
  }))
}

variable "vm" {
  type = map(object({
    nic_name = string
    location =string
    rg_name =string
    vm_name=string
    sb_name=string
    vn_name=string
    key_name=string
    admin_username=string
    nsg_name=string
    pip_name=string
  }))
}


variable "mssql_server" {
  type = map(object({
    mssql_server_name=string
    rg_name=string
    location=string
    administrator_login=string
    administrator_login_password=string 
    key_name=string
    server_name=string
  }))
}

variable "mssql_database" {
  type = map(object({
    mssql_database_name=string 
    mssql_server_name=string
    rg_name=string
  }))
}


variable "key_vault" {
  type = map(object({
    key_name=string
    location=string
    rg_name=string
  }))
}

variable "secret" {
  type = map(object({
    secret_name=string
    secret_value=string
     rg_name=string
     key_name=string
  }))
}

variable "pip" {
  type = map(object({
    pip_name=string
    location=string
    rg_name=string
  }))
}

variable "lb" {
  type = map(object({
    lb_name=string
    location=string
    rg_name=string
    backened_pool_name=string
  }))
}

variable "association" {
  type = map(object({
    nic_name=string
    rg_name=string
    backened_pool_name=string
    lb_name=string
  }))
}