<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 3.51.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bastion"></a> [bastion](#module\_bastion) | ./bastion | n/a |
| <a name="module_google_kubernetes_cluster"></a> [google\_kubernetes\_cluster](#module\_google\_kubernetes\_cluster) | ./kubernetes_cluster | n/a |
| <a name="module_google_networks"></a> [google\_networks](#module\_google\_networks) | ./networks | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bigquery_role_assignment"></a> [bigquery\_role\_assignment](#input\_bigquery\_role\_assignment) | n/a | <pre>map(object({<br>    role = string<br>    user = string<br>  }))</pre> | n/a | yes |
| <a name="input_cluster_node_zones"></a> [cluster\_node\_zones](#input\_cluster\_node\_zones) | The zones where Kubernetes cluster worker nodes should be located | `list(string)` | n/a | yes |
| <a name="input_credentials_file_path"></a> [credentials\_file\_path](#input\_credentials\_file\_path) | The credentials JSON file used to authenticate with GCP | `string` | n/a | yes |
| <a name="input_main_zone"></a> [main\_zone](#input\_main\_zone) | The zone to use as primary | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project to create resources in | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region to use | `string` | n/a | yes |
| <a name="input_service_account"></a> [service\_account](#input\_service\_account) | The GCP service account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bastion_open_tunnel_command"></a> [bastion\_open\_tunnel\_command](#output\_bastion\_open\_tunnel\_command) | Command that opens an SSH tunnel to the Bastion instance. |
| <a name="output_kubectl_alias_command"></a> [kubectl\_alias\_command](#output\_kubectl\_alias\_command) | Command that creates an alias for kubectl using Bastion as proxy. Bastion ssh tunnel must be running. |
<!-- END_TF_DOCS -->