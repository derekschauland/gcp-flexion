terraform {
  required_providers {
    google = {
        version = "4.31.0"
        source = "hasicorp/google"
    }
  }
}

provider "google" {
    project = "delta-daylight-357813"
    region = "us-central1"
  
    zone = "us-central1-c"
}