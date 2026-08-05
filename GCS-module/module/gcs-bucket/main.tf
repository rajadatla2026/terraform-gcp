resource "google_storage_bucket" "bucket-1" {
  name          = var.bucket_name
  project       = var.project_id
  location      = var.region
  storage_class = var.storage_class
  uniform_bucket_level_access = true
  versioning {
    enabled = var.versioning

  }
  lifecycle_rule {
    condition {
      age = var.lifecycle_age
    }
    action {
      type = "Delete"
    }
  }
  public_access_prevention = "enforced"
  labels = var.labels

}