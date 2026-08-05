variable "bucket_name" {
  type = string
}

variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "storage_class" {
  type = string
  default = "STANDARD"
}

variable "versioning" {
  type = bool
  default = false
}

variable "lifecycle_age" {
  type = number
  default = 1
}

variable "labels" {
    type = map(string)
    default = {}
}