resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
    access_config {
      // Ephemeral IP
    }
  }

  tags = var.tags

  service_account {
    email  = var.service_account_email
    scopes = var.service_account_scopes
  }
}
