module "gcs_bucket" {
    source = "../../module/gcs-bucket"
    project_id = var.project_id
    bucket_name = var.bucket_name
    region  = var.region
    version = var.versioning
    labels = {
        environment = "dev"
        owner = "devops"
        }
    storage_class = var.storage_class
    lifecycle_age = var.lifecycle_age

}