# AWS Route 53 - Module

> This module creates AWS Route53 zones and records.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Example

```hcl
module "route53" {
  source = "../"

  zone = {
    name    = "brl-tech-test.com"
    comment = "Gerenciado pelo mod. terraform"
    # delegation_set_id = ""
    # vpc = {
    #   id     = ""
    #   region = ""
    # }
  }

  records = [
    {
      name    = "test"
      type    = "CNAME"
      ttl     = 3600
      records = ["brl-tech-test.com"]
    }
  ]

  tags = {
    evironment = "dev"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_records"></a> [records](#input\_records) | List of Route53 records | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of resource tags | `map(any)` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Map of Route53 Zone parameters | <pre>object({<br>    name              = string<br>    comment           = optional(string)<br>    delegation_set_id = optional(string)<br>    vpc = optional(object({<br>      id     = string<br>      region = optional(string)<br>    }))<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | The Route53 Zone NS |
| <a name="output_recrods"></a> [recrods](#output\_recrods) | The Route53 Zone records |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | The Route53 Zone ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGIN_TF_DOCS -->


## Example

```hcl
module "route53" {
  source = "../"

  zone = {
    name    = "brl-tech-test.com"
    comment = "Gerenciado pelo mod. terraform"
    # delegation_set_id = ""
    # vpc = {
    #   id     = ""
    #   region = ""
    # }
  }

  records = [
    {
      name    = "test"
      type    = "CNAME"
      ttl     = 3600
      records = ["brl-tech-test.com"]
    }
  ]

  tags = {
    evironment = "dev"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_records"></a> [records](#input\_records) | List of Route53 records to be created | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of resource tags | `map(any)` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Map of Route53 Zone parameters | <pre>object({<br>    name              = string<br>    comment           = optional(string)<br>    delegation_set_id = optional(string)<br>    vpc = optional(object({<br>      id     = string<br>      region = optional(string)<br>    }))<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | The Route53 zone NS |
| <a name="output_recrods"></a> [recrods](#output\_recrods) | The Route53 zone records |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | The Route53 zone ID |
<!-- END_TF_DOCS -->