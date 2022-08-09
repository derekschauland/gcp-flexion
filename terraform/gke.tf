resource "google_service_account" "this" {
  account_id = var.google_service_account
  display_name = "Service Account"
}

resource "google_container_cluster" "this" {
  name = var.cluster_name
  location = var.cluster_location

  initial_node_count = 3

  node_config {
    service_account = google_service_account.this.email
    oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform"
    ]
    labels = {
        name = "flexion-project"
    }
    tags = ["felxion", "take-home-project", "schauland"]
  }

  timeouts {
    create = "20m"
    update = "30m"
  }
}