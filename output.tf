output "ip_address" {
 value = "${module.gci_test.external_ip_addresses.0.access_config.0.assigned_nat_ip}"
}

#output "this_launch_configuration_id" {
#  description = "The ID of the launch configuration"
#  value       = "${local.this_launch_configuration_id}"
#}
