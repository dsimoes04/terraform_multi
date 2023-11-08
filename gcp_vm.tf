resource "google_compute_instance" "default" {
  provider     = google.gcp
  name         = "terraform-test"
  machine_type = "e2-micro"
  zone         = "us-east1-b"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "test"
      }
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }
}