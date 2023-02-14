resource "google_bigquery_dataset" "vmo2_tech_test" {
  dataset_id                  = "vmo2_tech_test"
  friendly_name               = "My VMO2 Tech Test Dataset"
  description                 = "This dataset is used for VMO2 Tech Test"
  default_table_expiration_ms = "3600000"
  location                    = "US"
}

module "dataset_roles" {
  source = "./infrastructure/dataset_roles"

  bigquery_role_assignment = {
    vmo2_tech_test = {
      role = "roles/bigquery.dataEditor"
      user = "cloud_user_p_c66e52da@linuxacademygclabs.com"
    }
  }
dataset_id = google_bigquery_dataset.vmo2_tech_test.dataset_id

}

