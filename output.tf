output "gci_test" {
  value = "${join(",", google_compute_address.instances.*.gci_test)}"
}