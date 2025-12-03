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

data "azurerm_key_vault_secret" "vm_detail" {
  for_each =  var.vm
  name         = each.value.admin_username
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}

data "azurerm_network_security_group" "nsg" {
  for_each = var.vm
  name                = each.value.nsg_name
  resource_group_name = each.value.rg_name
}

data "azurerm_public_ip" "example" {
  for_each = var.vm
  name                = each.value.pip_name  
  resource_group_name = "tushar-rg"               
}