output "externalip" {
 value = "google_compute_instance.gci_test.*.ip"
}

#output "this_launch_configuration_id" {
#  description = "The ID of the launch configuration"
#  value       = "${local.this_launch_configuration_id}"
#}
