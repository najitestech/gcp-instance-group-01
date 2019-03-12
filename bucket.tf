resource "google_storage_bucket" "default" {
  name     = "${var.bucket}"
  location = "US"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}
