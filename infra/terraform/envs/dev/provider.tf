provider "aws" {
  region = var.region
}

provider "google" {
  credentials = credentials = file("../../gcp/credentials.json")
  project     = "poc-clima-cotacao"
}
