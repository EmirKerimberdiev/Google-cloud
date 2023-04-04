resource "google_compute_instance" "go-instance" {
  name         = "go-instance"
  machine_type = "e2-medium" 
  zone         = "us-central1-a"    

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
  }
}