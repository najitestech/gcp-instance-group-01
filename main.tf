module "mig1" {
  source            = "github.com/matti/terraform-google-compute-instance"
  version           = "1.1.14"
  region            = "${var.region}"
  zone              = "${var.zone}"
  name              = "group1"
  size              = 2
  service_port      = 80
  service_port_name = "http"
  http_health_check = false
#  target_pools      = ["${module.gci_test.target_pool}"]
  target_tags       = ["allow-service1"]
  ssh_source_ranges = ["0.0.0.0/0"]
}

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

resource "google_compute_instance" "Centos" {
   count = "1"
   name         = "web-server"
   machine_type = "${var.machine_type}"
   zone         = "${var.zone}"

   boot_disk {
     initialize_params {
     image = "${var.disk_image}"
    }
}

network_interface {
   network = "default"
   access_config {}
    // Ephemeral IP
}

    metadata_startup_script = "yum update && yum install -y httpd && sudo yum install -y figlet* && sudo yum -y install ansible*"
#metadata_startup_script = "${file("${path.module}/centos-scripts.sh")}"

service_account {
  scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}