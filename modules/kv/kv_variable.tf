variable "env" {
  type = string
  description = "This is the environment that we deploy to"
  default = "dev"
}

variable tags {
    type = map          
}

variable "rg_name" {
  type = string
}