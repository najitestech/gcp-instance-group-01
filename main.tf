module "gci_test" {
  source = "https://github.com/najitestech/terraform-google-compute-instance.git"

  amount       = 3
  region       = "${var.region}"
  name_prefix  = "${gcp-group-name}"
  machine_type = "${var.machine_type}"
  disk_size    = "${var.disk_size}"
  disk_image   = "${data.google_compute_image.coreos_stable.self_link}"
}