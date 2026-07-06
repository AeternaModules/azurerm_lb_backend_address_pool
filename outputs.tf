output "lb_backend_address_pools" {
  description = "All lb_backend_address_pool resources"
  value       = azurerm_lb_backend_address_pool.lb_backend_address_pools
}
output "lb_backend_address_pools_backend_ip_configurations" {
  description = "List of backend_ip_configurations values across all lb_backend_address_pools"
  value       = [for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : v.backend_ip_configurations]
}
output "lb_backend_address_pools_inbound_nat_rules" {
  description = "List of inbound_nat_rules values across all lb_backend_address_pools"
  value       = [for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : v.inbound_nat_rules]
}
output "lb_backend_address_pools_load_balancing_rules" {
  description = "List of load_balancing_rules values across all lb_backend_address_pools"
  value       = [for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : v.load_balancing_rules]
}
output "lb_backend_address_pools_loadbalancer_id" {
  description = "List of loadbalancer_id values across all lb_backend_address_pools"
  value       = [for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : v.loadbalancer_id]
}
output "lb_backend_address_pools_name" {
  description = "List of name values across all lb_backend_address_pools"
  value       = [for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : v.name]
}
output "lb_backend_address_pools_outbound_rules" {
  description = "List of outbound_rules values across all lb_backend_address_pools"
  value       = [for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : v.outbound_rules]
}
output "lb_backend_address_pools_synchronous_mode" {
  description = "List of synchronous_mode values across all lb_backend_address_pools"
  value       = [for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : v.synchronous_mode]
}
output "lb_backend_address_pools_tunnel_interface" {
  description = "List of tunnel_interface values across all lb_backend_address_pools"
  value       = [for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : v.tunnel_interface]
}
output "lb_backend_address_pools_virtual_network_id" {
  description = "List of virtual_network_id values across all lb_backend_address_pools"
  value       = [for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : v.virtual_network_id]
}

