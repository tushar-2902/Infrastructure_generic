variable "association" {
  type = map(object({
    nic_name=string
    rg_name=string
    backened_pool_name=string
    lb_name=string
  }))
}