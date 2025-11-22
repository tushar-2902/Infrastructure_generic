module "rg" {
  source = "../../module/resource_group"
  rg=var.rg_env

}

module "vn" {
  source = "../../module/virtual_network"
  vn = var.vn_env
}


module "vm" {
  depends_on = [ module.vn ]
  source = "../../module/virtual_machine"
  vm=var.vm
}

module "server" {
  depends_on = [ module.rg ]
  source = "../../module/mssql_server"
  mssql_server = var.mssql_server

}

module "database" {
  depends_on = [ module.server ]
  source = "../../module/mssql_database"
  mssql_database = var.mssql_database
}

module "key_vault" {
  depends_on = [ module.rg ]
  source = "../../module/key_valut"
  key_vault = var.key_vault
}

module "key_secret" {
  depends_on = [ module.key_vault ]
  source = "../../module/key_secret"
  secret = var.secret
}

module "pip" {
  depends_on = [module.rg]
  source = "../../module/public_ip"
  pip=var.pip
}

module "lb" {
  depends_on = [ module.rg ]
  source = "../../module/loadbalancer"
  lb = var.lb
}

module "association" {
  depends_on = [ module.lb ]
  source = "../../module/load_association"
  association = var.association
}
