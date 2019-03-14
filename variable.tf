variable "ssh_public_key_file" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUqpXsUHG2ia4k3n1sz5oSIvcGeDG9hKhkQVIYo1jw5eQjKBrfFoND+W3LGhg0VxW0Bbg/vNk6RrXli58Qviz8OnsBvotyeyG0NK3EiRGhFBcBYRUiksABUlNCN/hhMUXYd61qOVY/9j437XpBsC8/OOPNZOh//WOAm9+zk3zjTC8y+7FP7cvOSiq6t2q3s648msi33JNavUtm7d4kKMVUf7im4Z4tVMimqO3+mb3boL97+ljUTSTi5JnGMqL0TqLTxiqnMGoIVTUVTyYPpxOg+qrkXDcM4q6wAmSpVE8EQhyOWzUDiQLVzdYxk9pz9ldUrNI8U1j/TE+afYKF7kjr root@terraform"
}

variable "source" {
  default = "https://github.com/najitestech/terraform-google-compute-instance.git"
}  

variable "zone" {
  default = "us-east1"
}  
  
variable "region" {
  default = "us-east4"
}

variable "counts" {
  default = "1"
}

variable "gcp-group-name"{
  default = {
    "0" = "gcp-group-01"
    "1" = "gcp-group-02"
  }    
}
  
variable "machine_type" {
  default = "n1-standard-1"
}

variable "disk_size" {
  default = "20"
}

variable "disk_image" {
  default = "centos-7-v20190213"
}

variable "user_data" {
  default = "My-test-user"
}

variable "bucket" {
  default = "terraform-bucket-2020"
}