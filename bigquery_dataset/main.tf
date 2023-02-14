resource "google_bigquery_dataset" "vmo2_tech_test" {
  dataset_id                  = "vmo2_tech_test"
  friendly_name               = "My VMO2 Tech Test Dataset"
  description                 = "This dataset is used for VMO2 Tech Test"
  default_table_expiration_ms = "3600000"

}


