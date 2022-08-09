resource "google_cloudbuild_trigger" "build" {
  name = "build-the-takehome-thing"
  filename = "vote-all-in-on-redis.yaml"
  project = "delta-daylight-357813"

  github {
    owner = "derekschauland"
    name = "gcp-flexion"
    push {
        branch = "^master$"
    }
  }
}