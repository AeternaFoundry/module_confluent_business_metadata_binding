output "business_metadata_bindings_id" {
  description = "Map of id values across all business_metadata_bindings, keyed the same as var.business_metadata_bindings except keys with no id are omitted"
  value       = { for k, v in confluent_business_metadata_binding.business_metadata_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "business_metadata_bindings_attributes" {
  description = "Map of attributes values across all business_metadata_bindings, keyed the same as var.business_metadata_bindings except keys with no attributes are omitted"
  value       = { for k, v in confluent_business_metadata_binding.business_metadata_bindings : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "business_metadata_bindings_business_metadata_name" {
  description = "Map of business_metadata_name values across all business_metadata_bindings, keyed the same as var.business_metadata_bindings except keys with no business_metadata_name are omitted"
  value       = { for k, v in confluent_business_metadata_binding.business_metadata_bindings : k => v.business_metadata_name if v.business_metadata_name != null && length(v.business_metadata_name) > 0 }
}
output "business_metadata_bindings_credentials" {
  description = "Map of credentials values across all business_metadata_bindings, keyed the same as var.business_metadata_bindings except keys with no credentials are omitted"
  value       = { for k, v in confluent_business_metadata_binding.business_metadata_bindings : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "business_metadata_bindings_entity_name" {
  description = "Map of entity_name values across all business_metadata_bindings, keyed the same as var.business_metadata_bindings except keys with no entity_name are omitted"
  value       = { for k, v in confluent_business_metadata_binding.business_metadata_bindings : k => v.entity_name if v.entity_name != null && length(v.entity_name) > 0 }
}
output "business_metadata_bindings_entity_type" {
  description = "Map of entity_type values across all business_metadata_bindings, keyed the same as var.business_metadata_bindings except keys with no entity_type are omitted"
  value       = { for k, v in confluent_business_metadata_binding.business_metadata_bindings : k => v.entity_type if v.entity_type != null && length(v.entity_type) > 0 }
}
output "business_metadata_bindings_rest_endpoint" {
  description = "Map of rest_endpoint values across all business_metadata_bindings, keyed the same as var.business_metadata_bindings except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_business_metadata_binding.business_metadata_bindings : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "business_metadata_bindings_schema_registry_cluster" {
  description = "Map of schema_registry_cluster values across all business_metadata_bindings, keyed the same as var.business_metadata_bindings except keys with no schema_registry_cluster are omitted"
  value       = { for k, v in confluent_business_metadata_binding.business_metadata_bindings : k => one(v.schema_registry_cluster) if v.schema_registry_cluster != null && length(v.schema_registry_cluster) > 0 }
}

