module "gci_test" {
  source = "github.com/matti/terraform-google-compute-instance"

  amount       = 3
  region       = "${var.region}"
  name_prefix  = "${gcp-group-name}"
  machine_type = "${var.machine_type}"
  disk_size    = "${var.disk_size}"
  disk_image   = "${data.google_compute_image.coreos_stable.self_link}"
}