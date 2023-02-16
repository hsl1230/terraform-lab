terraform {
	required_providers {
		google = {
      source  = "hashicorp/google"
      version = "4.52.0"
		}
	}
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.var_project
}