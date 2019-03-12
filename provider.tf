provider "google" {
  credentials = "${file("terraform-project-2020.json")}"
  project     = "terraform-project-2020"
  region      = "us-east1-b"
}
