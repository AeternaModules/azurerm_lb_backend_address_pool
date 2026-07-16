output "lb_backend_address_pools_id" {
  description = "Map of id values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lb_backend_address_pools_backend_ip_configurations" {
  description = "Map of backend_ip_configurations values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.backend_ip_configurations if v.backend_ip_configurations != null && length(v.backend_ip_configurations) > 0 }
}
output "lb_backend_address_pools_inbound_nat_rules" {
  description = "Map of inbound_nat_rules values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.inbound_nat_rules if v.inbound_nat_rules != null && length(v.inbound_nat_rules) > 0 }
}
output "lb_backend_address_pools_load_balancing_rules" {
  description = "Map of load_balancing_rules values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.load_balancing_rules if v.load_balancing_rules != null && length(v.load_balancing_rules) > 0 }
}
output "lb_backend_address_pools_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.loadbalancer_id if v.loadbalancer_id != null && length(v.loadbalancer_id) > 0 }
}
output "lb_backend_address_pools_name" {
  description = "Map of name values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lb_backend_address_pools_outbound_rules" {
  description = "Map of outbound_rules values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.outbound_rules if v.outbound_rules != null && length(v.outbound_rules) > 0 }
}
output "lb_backend_address_pools_synchronous_mode" {
  description = "Map of synchronous_mode values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.synchronous_mode if v.synchronous_mode != null && length(v.synchronous_mode) > 0 }
}
output "lb_backend_address_pools_tunnel_interface" {
  description = "Map of tunnel_interface values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.tunnel_interface if v.tunnel_interface != null && length(v.tunnel_interface) > 0 }
}
output "lb_backend_address_pools_virtual_network_id" {
  description = "Map of virtual_network_id values across all lb_backend_address_pools, keyed the same as var.lb_backend_address_pools"
  value       = { for k, v in azurerm_lb_backend_address_pool.lb_backend_address_pools : k => v.virtual_network_id if v.virtual_network_id != null && length(v.virtual_network_id) > 0 }
}

