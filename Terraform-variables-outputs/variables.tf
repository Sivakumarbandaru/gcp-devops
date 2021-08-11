variable "project" {
  description = "The project ID to deploy to"
  default = "nasa7733-lab"
}

variable "region" {
  description = "The region to deploy to"
  default     = "us-central1"
}

variable "zone" {
  description = "The zone to deploy to"
  default     = "us-central1-a"
}

variable "network" {
  description = "The GCP network to launch the instance in"
  default     = "default"
}

variable "instance_name" {
  description = "The instance to deploy to"
  default     = "terraform"
}

variable "machine_type" {
  description = "The machine type to deploy to"
  default     = "f1-micro"
}

variable "image" {
  description = "The GCP network to launch the instance in"
  default     = "debian-9-stretch-v20200309"
}

variable "credentials" {
  default = "terraform.json"
}
