variable "replication_type" {
  type = string
  description = "This is the replication type for the storage account"
  default = "GRS"
}

variable "env" {
  type = string
  description = "This is the environment that we deploy to"
  default = "dev"
}

variable tags {
    type = map          
}

variable location{
  type = string
  default = "East US"
}