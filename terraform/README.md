# Datalake Terraform
This is a quick sample of uploading files using Terraform to GCS.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | 3.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [http_http.myip](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ip"></a> [ip](#output\_ip) | n/a |
<!-- END_TF_DOCS -->

## Updating the Terraform README
Run `terraform-docs markdown ./terraform --output-file README.md` from the root of the directory.

```sh
cat credentials.json | jq -r tostring
```
