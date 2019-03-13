terraform {
  backend "gcs" {
    bucket  = "terraform-state-2020"
    prefix  = "terrafom-state-2020"
  }
}
