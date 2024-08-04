provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "vm" {
  source                = "./modules/vm"
  name                  = "dev-instance"
  machine_type          = "n1-standard-1"
  image                 = "debian-cloud/debian-11"
  network               = "default"
  service_account_email = "default"
  service_account_scopes = ["cloud-platform"]
}
