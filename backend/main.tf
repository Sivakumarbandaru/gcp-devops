# This is the provider used to spin up the gcloud instance
provider "google" {
  credentials = file("terraform.json")
  project = "nasa7733-lab"
  region  = "us-east1"
  
}

resource "google_compute_instance" "vm-instance" {
  name         = "backend"
  machine_type = "f1-micro"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
    
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}


