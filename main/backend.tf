terraform {
  backend "gcs" {
    bucket  = "tf-state-arena-dev"
    prefix  = "terraform/state"
  }
}