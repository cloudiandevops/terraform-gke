output "instance_name" {
  description = "Name of the instance"
  value       = google_compute_instance.default.name
}

output "instance_self_link" {
  description = "Self-link of the instance"
  value       = google_compute_instance.default.self_link
}

output "instance_zone" {
  description = "Zone of the instance"
  value       = google_compute_instance.default.zone
}
