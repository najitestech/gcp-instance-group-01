terraform {
  backend "remote" {   #gcp
    bucket  = "terraform-state-2020"
    prefix  = "terraform/state"
  }
}
