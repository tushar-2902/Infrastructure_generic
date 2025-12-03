variable "secret" {
  type = map(object({
    key_name=string
    secret_name=string
    secret_value=string
     rg_name=string
  }))
}