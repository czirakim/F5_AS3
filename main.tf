variable "Authorization_string" {
  type = string
}
terraform {
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
      version = "1.9.0"
    }
  }
}
provider "bigip" {
    address = "192.168.88.101"
    username = "admin"
    password = var.Authorization_string
}

resource "bigip_as3"  "as3-example1" {
     as3_json = file("example.json")
 }
