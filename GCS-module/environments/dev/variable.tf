variable "project_id" {
  type = string
}
variable "region" {
  type = string
}

variable "bucket_name" {
  type = string
}

/*variable "versioning" {
  type = bool
  default = false
}*/

variable "lifecycle_age" {
  type = number
}
variable "storage_class" {
    type = string
}