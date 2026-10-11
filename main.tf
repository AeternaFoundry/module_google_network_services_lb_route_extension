resource "google_network_services_lb_route_extension" "network_services_lb_route_extensions" {
  for_each = var.network_services_lb_route_extensions

  forwarding_rules      = each.value.forwarding_rules
  load_balancing_scheme = each.value.load_balancing_scheme
  location              = each.value.location
  name                  = each.value.name
  deletion_policy       = each.value.deletion_policy
  description           = each.value.description
  labels                = each.value.labels
  project               = each.value.project

  dynamic "extension_chains" {
    for_each = each.value.extension_chains
    content {
      dynamic "extensions" {
        for_each = extension_chains.value.extensions
        content {
          authority              = extensions.value.authority
          fail_open              = extensions.value.fail_open
          forward_attributes     = extensions.value.forward_attributes
          forward_headers        = extensions.value.forward_headers
          metadata               = extensions.value.metadata
          name                   = extensions.value.name
          observability_mode     = extensions.value.observability_mode
          request_body_send_mode = extensions.value.request_body_send_mode
          service                = extensions.value.service
          supported_events       = extensions.value.supported_events
          timeout                = extensions.value.timeout
        }
      }
      match_condition {
        cel_expression = extension_chains.value.match_condition.cel_expression
      }
      name = extension_chains.value.name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

