terraform {
  backend "gcs" {
    bucket  = "${bucket}"
    prefix  = "terraform/state"
  }
}
