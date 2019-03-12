module "gci_test" {
  source = "github.com/matti/terraform-google-compute-instance"

  amount       = "${var.counts}"
  region       = "${var.region}"
  name_prefix  = "${var.gcp-group-name}"
  machine_type = "${var.machine_type}"
  disk_size    = "${var.disk_size}"
  disk_image   = "${var.disk_image}"
  user_data    = "${var.user_data}"
}