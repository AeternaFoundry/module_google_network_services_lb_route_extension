variable "network_services_lb_route_extensions" {
  description = <<EOT
Map of network_services_lb_route_extensions, attributes below
Required:
    - forwarding_rules
    - load_balancing_scheme
    - location
    - name
    - extension_chains (block):
        - extensions (required, block):
            - authority (optional)
            - fail_open (optional)
            - forward_attributes (optional)
            - forward_headers (optional)
            - metadata (optional)
            - name (required)
            - observability_mode (optional)
            - request_body_send_mode (optional)
            - service (required)
            - supported_events (optional)
            - timeout (optional)
        - match_condition (required, block):
            - cel_expression (required)
        - name (required)
Optional:
    - deletion_policy
    - description
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    forwarding_rules      = list(string)
    load_balancing_scheme = string
    location              = string
    name                  = string
    deletion_policy       = optional(string)
    description           = optional(string)
    labels                = optional(map(string))
    project               = optional(string)
    extension_chains = list(object({
      extensions = list(object({
        authority              = optional(string)
        fail_open              = optional(bool)
        forward_attributes     = optional(list(string))
        forward_headers        = optional(list(string))
        metadata               = optional(map(string))
        name                   = string
        observability_mode     = optional(bool)
        request_body_send_mode = optional(string)
        service                = string
        supported_events       = optional(set(string))
        timeout                = optional(string)
      }))
      match_condition = object({
        cel_expression = string
      })
      name = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.network_services_lb_route_extensions : (
        length(v.extension_chains) >= 1
      )
    ])
    error_message = "Each extension_chains list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.network_services_lb_route_extensions : (
        alltrue([for item in v.extension_chains : (length(item.extensions) >= 1)])
      )
    ])
    error_message = "Each extensions list must contain at least 1 items"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

