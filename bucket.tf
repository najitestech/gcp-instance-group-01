resource "google_storage_bucket_acl" "default" {
  count       = "${length(var.role_entity) > 0 ? length(google_storage_bucket.default.*.name) : 0}"
  default_acl = "${var.default_acl}"
  bucket      = "${element(google_storage_bucket.default.*.name, count.index)}"

  role_entity = [
    "${var.role_entity}",
  ]
}