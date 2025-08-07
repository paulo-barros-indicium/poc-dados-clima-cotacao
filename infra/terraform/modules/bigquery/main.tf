resource "google_bigquery_dataset" "this" {
  dataset_id                 = var.dataset_id
  location                   = var.location
  delete_contents_on_destroy = true

  labels = {
    environment = var.environment
  }
}