resource "google_storage_bucket" "backend" {
	# checkov:skip=CKV_GCP_62: ADD REASON
  name                        = "tf-state-arena-dev"
  location                    = "US"
  force_destroy               = true
  storage_class               = "STANDARD"
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
			num_newer_versions = 3
      days_since_noncurrent_time = 7
    }
    action {
      type = "Delete"
    }
  }
}
