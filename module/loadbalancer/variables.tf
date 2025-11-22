variable "lb" {
  type = map(object({
    lb_name=string
    location=string
    rg_name=string
    backened_pool_name=string
  }))
}