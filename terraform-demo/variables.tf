variable "credentials" {
  description = "My Credentials"
  default     = "./keys/creds.json"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "project" {
  description = "Project"
  default     = "ml-zoomcamp-402900"
}

variable "bq_dataset_name" {
  description = "My BigQuery dataset name"
  default     = "demo_dataset"
}

variable "gcp_bucket_name" {
  description = "My Storage Bucket name"
  default     = "demo-bucket-402900"
}

variable "gcp_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}