#terraform {
#  backend "gcs" {
#    bucket  = "terraform-bucket-2020"
#    prefix  = "terraform/state"
#    credentials = "terraform-project-2020.json"
#    project = "my-awesome-project"
#    region  = "us-east1"
#  }
#}

terraform {
  backend "s3" {
    bucket = "devops-bucket-01"
    key    = "terraform-state-file"
    region = "us-east-1"
    encrypt = "true"
    profile = "default"
  }
}
