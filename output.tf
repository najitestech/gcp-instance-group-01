#output "module" {
# value = "${module.gci_test.ip_address}"
#}
           #${google_compute_forwarding_rule.default.ip_address

output "Centos" {
  description = "The ID of the launch configuration"
  value       = "${google_compute_instance.Centos.ip_address}"
}
