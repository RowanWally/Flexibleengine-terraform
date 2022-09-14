resource "flexibleengine_networking_router_v2" "VPC_1" {
name             = var.vpc_name
admin_state_up = "true"
}
resource "flexibleengine_networking_network_v2" "network_1" {
name           = "RW-Devops-network"
admin_state_up = "true"
}
resource "flexibleengine_networking_subnet_v2" "subnet_1" {
name       = "RW-Devops-subnet"
cidr       = var.subnet_cidr
network_id = flexibleengine_networking_network_v2.network_1.id
}
resource "flexibleengine_networking_router_interface_v2" "flexibleengine_VPC" {
router_id = flexibleengine_networking_router_v2.VPC_1.id
subnet_id = flexibleengine_networking_subnet_v2.subnet_1.id
}
output "vpc" {
  value = flexibleengine_networking_router_v2.VPC_1
}
