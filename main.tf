provider "google" {
  project     = "${var.gcp_project}"
  region      = "${var.gcp_region}"
}

resource "google_project_service" "project" {
  project = "${var.gcp_project}"
  service = "iam.googleapis.com"

  disable_dependent_services = true
}

resource "google_compute_instance" "mattpeters" {
  name         = "${var.instance_name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.gcp_zone}"
  allow_stopping_for_update = true
  tags = ["mattpeters"]
  # remove tags for sentinel to fail (demo purposes)

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

}
