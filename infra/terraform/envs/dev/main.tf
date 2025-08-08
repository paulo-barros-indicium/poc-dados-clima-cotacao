module "s3" {
  source      = "../../modules/s3"
  bucket_name = "poc-dados-dev-raw"
  environment = "dev"
} #teste

#module "bigquery" {
#  source      = "../../modules/bigquery"
#  dataset_id  = "clima_cotacao"
#  location    = "us"
#  environment = "dev"
#}