# Usage
<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account\_name | Account name (slug) | `any` | n/a | yes |
| extra\_roles | A list of extra roles to create in this account | `list` | `[]` | no |
| extra\_roles\_policy | A map of { <role\_name> = <json policy> } to create policies to extra roles in this account (role must be declared at extra\_roles first) | `map` | `{}` | no |
| extra\_roles\_policy\_arn | A map of { <role\_name> = <policy arn> } to attach policies to extra roles in this account (role must be declared at extra\_roles first) | `map` | `{}` | no |
| org\_name | Name for this organization (slug) | `any` | n/a | yes |
| role\_max\_session\_duration | Maximum CLI/API session duration | `string` | `"43200"` | no |
| saml\_provider\_name | SAML Provider name to trust the roles created | `any` | n/a | yes |
| set\_account\_alias | Whether to set or not IAM account alias | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_role\_admin\_arn | AdministratorAccess IAM role ARN |
| iam\_role\_data\_scientist\_arn | DataScientist IAM role ARN |
| iam\_role\_database\_admin\_arn | DatabaseAdministrator IAM role ARN |
| iam\_role\_extra\_arns | n/a |
| iam\_role\_network\_admin\_arn | NetworkAdministrator IAM role ARN |
| iam\_role\_power\_user\_arn | PowerUserAccess IAM role ARN |
| iam\_role\_security\_audit\_arn | SecurityAudit IAM role ARN |
| iam\_role\_support\_user\_arn | SupportUser IAM role ARN |
| iam\_role\_system\_admin\_arn | SystemAdministrator IAM role ARN |
| iam\_role\_view\_only\_arn | ViewOnlyAccess IAM role ARN |

<!--- END_TF_DOCS --->
