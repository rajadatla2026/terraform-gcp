output "bucket_name" {
  value = google_storage_bucket.bucket-1.name
}

output "bucket_url" {
  value = google_storage_bucket.bucket-1.url
}