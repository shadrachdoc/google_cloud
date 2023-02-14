project_id = "playground-s-11-2a627d15"
credentials_file_path = "/root/test/credentials.json"
service_account = "kubectl@playground-s-11-2a627d15.iam.gserviceaccount.com"
region = "europe-west2"
main_zone = "europe-west2-b"
cluster_node_zones = ["europe-west2-b"]
bigquery_role_assignment = {
  vmo2_tech_test = {
    role = "roles/bigquery.dataEditor"
    user = "<your_email_address>"
  }
}

