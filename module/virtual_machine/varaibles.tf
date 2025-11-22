variable "vm" {
  type = map(object({
    nic_name = string
    location =string
    rg_name =string
    vm_name=string
    sb_name=string
    vn_name=string
    key_name=string
    secret_name=string
    secret_password=string
  }))
}
