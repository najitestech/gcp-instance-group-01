output "ip_address" {
 value = "${module.gci_test.External_IP_id}"
}

#output "this_launch_configuration_id" {
#  description = "The ID of the launch configuration"
#  value       = "${local.this_launch_configuration_id}"
#}
