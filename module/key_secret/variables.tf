variable "secret" {
  type = map(object({
    secret_name=string
    secret_value=string
     rg_name=string
  }))
}