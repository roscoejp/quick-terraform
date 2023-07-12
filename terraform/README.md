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

## Github Actions Secrets & Aggressive *** replacement in logs

When you use a [GitHub Actions secret][github-secrets] inside a workflow, _each_
line of the secret is masked in log output. This is controlled by GitHub, not
the `auth` action. We cannot change this behavior.

This can be problematic if your secret is a multi-line JSON string, since it
means curly braces (`{}`) and brackets (`[]`) will likely be replaced as `***`
in the GitHub Actions log output. To avoid this, remove all unnecessary
whitespace from the JSON and save the secret as a single-line JSON string. You
can convert a multi-line JSON document to a single-line manually or by using a
tool like `jq`:

```sh
cat credentials.json | jq -r tostring
```
