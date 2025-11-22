data "azurerm_subnet" "example" {
    for_each = var.vm
  name                 = each.value.sb_name                   # Subnet name
  virtual_network_name = each.value.vn_name                  # VNet name
  resource_group_name  = each.value.rg_name                   # RG name
}

data "azurerm_key_vault" "kv" {
  for_each =  var.vm
  name                = each.value.key_name
  resource_group_name = each.value.rg_name
}

data "azurerm_key_vault_secret" "vm_name" {
  for_each =  var.vm
  name         = each.value.secret_name
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}

data "azurerm_key_vault_secret" "vm_password" {
  for_each =  var.vm
  name         = each.value.secret_password
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}