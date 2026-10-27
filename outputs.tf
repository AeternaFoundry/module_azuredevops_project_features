output "project_features_id" {
  description = "Map of id values across all project_features, keyed the same as var.project_features"
  value       = { for k, v in azuredevops_project_features.project_features : k => v.id }
}
output "project_features_features" {
  description = "Map of features values across all project_features, keyed the same as var.project_features"
  value       = { for k, v in azuredevops_project_features.project_features : k => v.features }
}
output "project_features_project_id" {
  description = "Map of project_id values across all project_features, keyed the same as var.project_features"
  value       = { for k, v in azuredevops_project_features.project_features : k => v.project_id }
}

