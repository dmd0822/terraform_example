output "sa_connection_string" {
    value = module.sa.connection_string
    sensitive = true  
}