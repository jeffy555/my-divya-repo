output "release_name" {
  description = "Installed release name."
  value       = helm_release.component.name
}
