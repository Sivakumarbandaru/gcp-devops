// instance.tf variables
variable "instance_name" {}
variable "machine_type" {}
variable "zone" {}
variable "image" {}
variable "network" {}
variable "project" {}
variable "region" {}
variable "credentials" {
  default = "sivatestproject.json"
}