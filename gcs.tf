resource "google_storage_bucket" "gcs_bucket" {
  name          = "bucket-for-terraform"
  location      = "US"
  storage_class = "STANDARD"

  uniform_bucket_level_access = true

  versioning {
    enabled = false
  }

  lifecycle_rule {
    condition {
      age = 1
    }

    action {
      type = "Delete"
    }
  }

  force_destroy = true

  labels = {
    environment = "dev"
    managed_by  = "terraform"
  }
}