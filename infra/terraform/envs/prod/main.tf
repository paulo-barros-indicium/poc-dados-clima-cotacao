provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

module "s3" {
  source      = "../../modules/s3" #teste
  bucket_name = "poc-dados-prod-raw"
  environment = "prod"
}