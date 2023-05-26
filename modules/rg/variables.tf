variable "environment" {
  type = string
  description = "This is the environment that we deploy to"
  default = "dev"
}

variable rg_tags {
    type = map          
}

variable rg_location{
  type = string
  default = "East US"
}