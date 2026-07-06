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
  validation {
    condition = alltrue([
      for k, v in var.lb_backend_address_pools : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_lb_backend_address_pool's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: loadbalancer_id
  #   source:    [from loadbalancers.ValidateLoadBalancerID] !ok
  # path: loadbalancer_id
  #   source:    [from loadbalancers.ValidateLoadBalancerID] err != nil
  # path: synchronous_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tunnel_interface.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tunnel_interface.protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] !ok
  # path: virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] err != nil
}

