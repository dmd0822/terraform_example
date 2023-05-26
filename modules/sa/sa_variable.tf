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

variable "rg_name" {
  type = string
}

variable "key_vault_id" {
  type = string
}