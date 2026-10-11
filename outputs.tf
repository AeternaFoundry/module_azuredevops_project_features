output "project_features_id" {
  description = "Map of id values across all project_features, keyed the same as var.project_features except keys with no id are omitted"
  value       = { for k, v in azuredevops_project_features.project_features : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_features_features" {
  description = "Map of features values across all project_features, keyed the same as var.project_features except keys with no features are omitted"
  value       = { for k, v in azuredevops_project_features.project_features : k => v.features if v.features != null && length(v.features) > 0 }
}
output "project_features_project_id" {
  description = "Map of project_id values across all project_features, keyed the same as var.project_features except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_project_features.project_features : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

