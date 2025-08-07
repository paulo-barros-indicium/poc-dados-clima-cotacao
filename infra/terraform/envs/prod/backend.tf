terraform {
  backend "s3" {
    bucket = "poc-dados-prod-tfstate"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}
