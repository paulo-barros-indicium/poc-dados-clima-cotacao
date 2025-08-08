provider "aws" {
  region = var.region
}

provider "google" {
  credentials = var.gcp_credentials
  project     = "poc-clima-cotacao"
}