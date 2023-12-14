terraform {
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
      version = "1.9.0"
    }
  }
}
provider "bigip" {
    address = var.IP_ADDRESS
    username = "admin"
    password = var.Authorization_string
}
data template_file "init" {
  template = file("tenant_template.json")
  vars = {
    TENANT = var.TENANT
    VIP_NAME = var.VIP_NAME
    VIP = var.VIP
    HTTP_PROFILE= var.HTTP_PROFILE
    IRULE_NAME= var.IRULE_NAME
    IRULE= var.IRULE
    POOL1 = var.POOL1
    LB_MODE = var.LB_MODE
    PERSISTANCE = var.PERSISTANCE
    MONITOR = var.MONITOR
    MEMBERS_1 = jsonencode(var.MEMBERS_1)
    SERVICEPORT = var.SERVICEPORT
    }
  }
resource "bigip_as3" "as3-tenant" {
     as3_json = data.template_file.init.rendered
     }