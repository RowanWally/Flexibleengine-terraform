resource "flexibleengine_compute_instance_v2" "instance_1" {
name            = "RW-Devops-ECS"
flavor_id       = "s3.medium.4"
key_pair        = "RW-5121-Key"
security_groups = ["RW-devops-SG"]
image_name  = "OBS CentOS 7.9"
network  {
uuid = flexibleengine_networking_network_v2.network_1.id
}
}
output "ECS" {
  value = flexibleengine_compute_instance_v2.instance_1
}
