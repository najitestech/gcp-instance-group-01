module "gci_test" {
  source = "https://github.com/najitestech/terraform-google-compute-instance.git"

  amount       = "${var.counts}"
  region       = "${var.region}"
  name_prefix  = "${var.gcp-group-name}"
  machine_type = "${var.machine_type}"
  disk_size    = "${var.disk_size}"
  disk_image   = "${var.disk_image}"
  user_data    = "${var.user_data}"
}

module "gci_test2" {
  source = "https://github.com/najitestech/terraform-google-compute-instance.git"

  amount       = 3
  region       = "us-east1"
  name_prefix  = "test"
  machine_type = "${var.machine_type}"
  disk_size    = "20"
  disk_image   = "${var.disk_image}"
}

resource "google_compute_instance" "Centos" {
   count = "4"
   name         = "web-server${count.index + 1}"
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