variable "lb_backend_address_pools" {
  description = <<EOT
Map of lb_backend_address_pools, attributes below
Required:
    - loadbalancer_id
    - name
Optional:
    - synchronous_mode
    - virtual_network_id
    - tunnel_interface (block):
        - identifier (required)
        - port (required)
        - protocol (required)
        - type (required)
EOT

  type = map(object({
    loadbalancer_id    = string
    name               = string
    synchronous_mode   = optional(string)
    virtual_network_id = optional(string)
    tunnel_interface = optional(list(object({
      identifier = number
      port       = number
      protocol   = string
      type       = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lb_backend_address_pools : (
        v.tunnel_interface == null || (length(v.tunnel_interface) >= 1)
      )
    ])
    error_message = "Each tunnel_interface list must contain at least 1 items"
  }
}

