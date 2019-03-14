output "externalip" {
 value = "${google_compute_instance.nomad.*.network_interface.0.access_config.0.assigned_nat_ip}"
}

#output "this_launch_configuration_id" {
#  description = "The ID of the launch configuration"
#  value       = "${local.this_launch_configuration_id}"
#}
