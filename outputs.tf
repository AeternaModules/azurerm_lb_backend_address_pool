output "lb_backend_address_pools_id" {
  description = "Map of id values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.id }
}
output "lb_backend_address_pools_backend_ip_configurations" {
  description = "Map of backend_ip_configurations values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.backend_ip_configurations }
}
output "lb_backend_address_pools_inbound_nat_rules" {
  description = "Map of inbound_nat_rules values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.inbound_nat_rules }
}
output "lb_backend_address_pools_load_balancing_rules" {
  description = "Map of load_balancing_rules values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.load_balancing_rules }
}
output "lb_backend_address_pools_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.loadbalancer_id }
}
output "lb_backend_address_pools_name" {
  description = "Map of name values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.name }
}
output "lb_backend_address_pools_outbound_rules" {
  description = "Map of outbound_rules values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.outbound_rules }
}
output "lb_backend_address_pools_synchronous_mode" {
  description = "Map of synchronous_mode values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.synchronous_mode }
}
output "lb_backend_address_pools_tunnel_interface" {
  description = "Map of tunnel_interface values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.tunnel_interface }
}
output "lb_backend_address_pools_virtual_network_id" {
  description = "Map of virtual_network_id values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.virtual_network_id }
}

