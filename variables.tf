variable "gcp_project" {
  description = "GCP project name"
  default = "matts-test-project-249917"
}
variable "gcp_region" {
  description = "GCP region, e.g. us-east1"
  default = "us-east1"
}

variable "gcp_zone" {
  description = "GCP zone, e.g. us-east1-a"
  default = "us-east1-b"
}

variable "machine_type" {
  description = "GCP machine type"
  # default = "n1-standard-8"
  default = "n1-standard-1"
 
}

variable "instance_name" {
  description = "GCP instance name"
  default = "mattpeters-hashicorp-demo"
}

variable "image" {
  description = "image to build instance from"
  default = "debian-cloud/debian-9"
}
