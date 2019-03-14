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

module "gce-ilb" {
  source         = "github.com/matti/terraform-google-compute-instance"
  
  region         = "${var.region}"
  name           = "group2-ilb"
  ports          = ["${module.gci_test.service_port}"]
  health_port    = "${module.gci_test.service_port}"
  source_tags    = ["${module.gci_test.target_tags}"]
  target_tags    = ["${module.gci_test.target_tags}" #,"${module.mig3.target_tags}"]
# backends       = "${module.gci_test.instance_group}"
#   { group = "${module.gci_test.instance_group}" },
#    { group = "${module.mig3.instance_group}" },
# ]
}
