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
    SERVICE1 = var.SERVICE1
    SERVICE2 = var.SERVICE2
    VIP = var.VIP
    VIP2 = var.VIP2
    HTTP_PROFILE= var.HTTP_PROFILE
    IRULE_NAME= var.IRULE_NAME
    IRULE= var.IRULE
    POOL1 = var.POOL1
    POOL2 = var.POOL2
    LB_MODE = var.LB_MODE
    PERSISTANCE = var.PERSISTANCE
    MONITOR = var.MONITOR
    MEMBERS_1 = jsonencode(var.MEMBERS_1)
    MEMBERS_2 = jsonencode(var.MEMBERS_2)
    SERVICEPORT = var.SERVICEPORT
    S2_POOL1 = var.S2_POOL1
    S2_MONITOR = var.S2_MONITOR
    S2_MEMBERS_1 = jsonencode(var.S2_MEMBERS_1)
    }
  }
resource "bigip_as3" "as3-tenant" {
     as3_json = data.template_file.init.rendered
     }