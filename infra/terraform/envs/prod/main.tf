module "s3" {
  source      = "../../modules/s3"
  bucket_name = "poc-dados-prod-raw"
  environment = "prod"
}

module "bigquery" {
  source      = "../../modules/bigquery"
  dataset_id  = "clima_cotacao"
  location    = "us"
  environment = "prod"
}