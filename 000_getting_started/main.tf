terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Sirnobles"

    workspaces {
      name = "getting-started"
    }
  }
}

locals {
  project_name = "Aaron"
}