variable "project_name" {
  default = "poc-dados"
}

variable "region" {
  default = "us-east-1"
}

variable "gcp_credentials" {
  type      = string
  sensitive = true
  description = "Credenciais do GCP no formato JSON compactado, injetadas via GitHub Secrets"
}
