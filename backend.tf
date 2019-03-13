terraform {
  backend "gcs" {
    bucket  = "terraform-state-2020"
    prefix  = "terraform/state"
    credentials = "terraform-project-2020.json"
  }
}
