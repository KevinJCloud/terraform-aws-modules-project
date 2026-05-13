variable "myapp"{}
variable "myvpc_cidr"{}
variable "mysubnet_cidr"{}

variable "my_dict" {
  type = map(object({
    ami  = string
    key  = string
    type = string
  }))
}
