variable "credentials" {
  description = "My Credentials"
  default     = "../../terraform-demo/keys/creds.json"
}


variable "project" {
  description = "Project"
  default     = "ml-zoomcamp-402900"
}

variable "region" {
  description = "Region"
  default = "us-central1"
}

variable "location" {
  description = "Project Location"
  default = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default = "ml_zoomcamp_402900_hw1_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default = "ml_zoomcamp_402900_hw1_bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}