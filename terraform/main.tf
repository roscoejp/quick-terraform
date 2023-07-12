# Upload a text file as an object to the storage bucket
resource "google_storage_bucket_object" "default" {
  name         = "sample.txt"
  source       = "../sample.txt"
  content_type = "text/plain"
  bucket       = "boring-hoover"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "boring-hoover"
    prefix = "terraform/state"
  }
}

# define variables
variable "project_id" {
  type        = string
  description = "The project name to use."
}

variable "region" {
  type        = string
  description = "The region used for the provider."
  default     = "us-east1"
}
