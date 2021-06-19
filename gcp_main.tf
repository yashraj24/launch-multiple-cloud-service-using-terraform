resource "google_compute_instance"  "gcp_vm" {
  name         = "os1"
  machine_type = var.mtype
  zone         = "asia-south1-c"
  count = var.istest ? 1 : 0

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}