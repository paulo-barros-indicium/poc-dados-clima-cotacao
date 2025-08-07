module "s3" {
  source      = "../../modules/s3"
  bucket_name = "poc-dados-prod-raw"
  environment = "prod"
}