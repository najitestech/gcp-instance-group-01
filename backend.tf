terraform {
  backend "gcs" {
    bucket  = "${bucket}"
    prefix  = "${var.prefix}"
  }
}
