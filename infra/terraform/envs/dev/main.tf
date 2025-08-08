module "s3" {
  source      = "../../modules/s3"
  bucket_name = "poc-dados-dev-raw"
  environment = "dev"
}

module "bigquery" {
  source      = "../../modules/bigquery"
  dataset_id  = "clima_cotacao_dev"
  location    = "us"
  environment = "dev"
}