provider "google" {
  credentials = "${file("terraform-project-2020.json")}"
  project     = "terraform-project-2020"
  region      = "${var.region}"
}
