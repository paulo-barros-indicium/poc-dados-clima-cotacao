provider "aws" {
  region = var.region
}

provider "google" {
  credentials = file("${path.module}/../../../gcp/credentials.json")
  project     = "poc-clima-cotacao"
}
