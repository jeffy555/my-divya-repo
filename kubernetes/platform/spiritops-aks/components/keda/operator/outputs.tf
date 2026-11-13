output "release_name" {
  description = "Installed KEDA release."
  value       = helm_release.component.name
}
