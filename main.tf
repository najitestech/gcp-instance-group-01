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
     image = "centos-7"
    }
}

network_interface {
   network = "default"
   access_config {}
    // Ephemeral IP
}

    #metadata_startup_script = "yum update && yum install -y httpd && yum innstall -y figlet"
#metadata_startup_script = "${file("${path.module}/centos_scripts.sh")}"

service_account {
  scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
