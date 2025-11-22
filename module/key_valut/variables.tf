variable "key_vault" {
  type = map(object({
    key_name=string
    location=string
    rg_name=string
  }))
}