terraform {
  backend "gcs" {
    bucket = "nasa7733-lab-terraform-state"
    prefix      = "monday"
    credentials = "terraform.json"
  }
}
