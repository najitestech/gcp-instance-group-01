terraform {
  backend "gcs" {
    bucket  = "terraform-state-2020"
    prefix  = "terraform/state"
  }
}
