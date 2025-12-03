module "rg" {
  source = "../../module/resource_group"
  rg     = var.rg_env
}

module "key_vault" {
  depends_on = [module.rg]
  source     = "../../module/key_valut"
  key_vault  = var.key_vault
}

module "key_secret" {
  depends_on = [module.key_vault]
  source     = "../../module/key_secret"
  secret     = var.secret
}

module "vn" {
  depends_on = [module.key_secret]
  source     = "../../module/virtual_network"
  vn         = var.vn_env
}

module "pip" {
  depends_on = [module.vn]
  source     = "../../module/public_ip"
  pip        = var.pip
}

module "lb" {
  depends_on = [
    module.pip,
    module.vn
  ]
  source = "../../module/loadbalancer"
  lb     = var.lb
}

module "vm" {
  depends_on = [
    module.vn,
    module.lb
  ]
  source = "../../module/virtual_machine"
  vm     = var.vm

}

module "association" {
  depends_on = [
    module.vm,
    module.lb
  ]
  source     = "../../module/load_association"
  association = var.association
}

module "server" {
  depends_on = [
    module.association
  ]
  source       = "../../module/mssql_server"
  mssql_server = var.mssql_server
}

module "database" {
  depends_on = [
    module.server
  ]
  source         = "../../module/mssql_database"
  mssql_database = var.mssql_database
}
