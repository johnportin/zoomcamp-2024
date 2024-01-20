terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  credentials = "./keys/creds.json"
  project     = "ml-zoomcamp-402900"
  region      = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "demo-bucket-402900"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}