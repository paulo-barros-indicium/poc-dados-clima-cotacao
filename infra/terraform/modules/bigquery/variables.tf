variable "dataset_id" {
  description = "ID do dataset BigQuery"
  type        = string
}

variable "location" {
  description = "Localização do dataset"
  type        = string
  default     = "us"
}

variable "environment" {
  description = "Ambiente (dev/prod)"
  type        = string
}
