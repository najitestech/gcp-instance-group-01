variable "ssh_public_key_file" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUqpXsUHG2ia4k3n1sz5oSIvcGeDG9hKhkQVIYo1jw5eQjKBrfFoND+W3LGhg0VxW0Bbg/vNk6RrXli58Qviz8OnsBvotyeyG0NK3EiRGhFBcBYRUiksABUlNCN/hhMUXYd61qOVY/9j437XpBsC8/OOPNZOh//WOAm9+zk3zjTC8y+7FP7cvOSiq6t2q3s648msi33JNavUtm7d4kKMVUf7im4Z4tVMimqO3+mb3boL97+ljUTSTi5JnGMqL0TqLTxiqnMGoIVTUVTyYPpxOg+qrkXDcM4q6wAmSpVE8EQhyOWzUDiQLVzdYxk9pz9ldUrNI8U1j/TE+afYKF7kjr root@terraform"
}

variable "zone" {
  default = "us-east1"
}  
  
variable "region" {
  default = ""
}  
  