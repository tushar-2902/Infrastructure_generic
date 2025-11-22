variable "vn"{
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
