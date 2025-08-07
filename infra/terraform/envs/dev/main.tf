module "s3" {
  source      = "../../modules/s3"
  bucket_name = "poc-dados-dev-raw"
  environment = "dev"
}# ajuste para acionar o workflow
