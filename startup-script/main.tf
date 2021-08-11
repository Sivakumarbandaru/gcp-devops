# This is the provider used to spin up the gcloud instance
provider "google" {
  credentials = file("sivatestproject.json")
  project = "sivatestproject"
  region  = "us-east1"
  
}

resource "google_compute_instance" "vm-instance" {
  name         = "starup"
  machine_type = "f1-micro"
  zone         = "us-east1-b"

  metadata = {
    startup-script-url = "gs://startupscript-terraform/script .sh"
  }

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


