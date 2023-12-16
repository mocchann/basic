resource "google_compute_instance" "default" {
  name = "test"
  machine_type = "f1-micro"
  zone = "asia-northeast1-c"
  project      = "terraform-toshi0607-406902"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }
}
