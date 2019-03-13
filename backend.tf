terraform {
  backend "gcp" {
    bucket  = "terraform-state-2020"
    prefix  = "terraform/state"
    storage_class = Multi-Regional
  }
}
