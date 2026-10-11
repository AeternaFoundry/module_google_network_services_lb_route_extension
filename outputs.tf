output "network_services_lb_route_extensions_id" {
  description = "Map of id values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no id are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_services_lb_route_extensions_deletion_policy" {
  description = "Map of deletion_policy values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "network_services_lb_route_extensions_description" {
  description = "Map of description values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no description are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_services_lb_route_extensions_effective_labels" {
  description = "Map of effective_labels values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no effective_labels are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "network_services_lb_route_extensions_extension_chains" {
  description = "Map of extension_chains values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no extension_chains are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.extension_chains if v.extension_chains != null && length(v.extension_chains) > 0 }
}
output "network_services_lb_route_extensions_forwarding_rules" {
  description = "Map of forwarding_rules values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no forwarding_rules are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.forwarding_rules if v.forwarding_rules != null && length(v.forwarding_rules) > 0 }
}
output "network_services_lb_route_extensions_labels" {
  description = "Map of labels values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no labels are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "network_services_lb_route_extensions_load_balancing_scheme" {
  description = "Map of load_balancing_scheme values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no load_balancing_scheme are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.load_balancing_scheme if v.load_balancing_scheme != null && length(v.load_balancing_scheme) > 0 }
}
output "network_services_lb_route_extensions_location" {
  description = "Map of location values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no location are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.location if v.location != null && length(v.location) > 0 }
}
output "network_services_lb_route_extensions_name" {
  description = "Map of name values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no name are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_services_lb_route_extensions_project" {
  description = "Map of project values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no project are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.project if v.project != null && length(v.project) > 0 }
}
output "network_services_lb_route_extensions_terraform_labels" {
  description = "Map of terraform_labels values across all network_services_lb_route_extensions, keyed the same as var.network_services_lb_route_extensions except keys with no terraform_labels are omitted"
  value       = { for k, v in google_network_services_lb_route_extension.network_services_lb_route_extensions : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

