terraform-aws-lambdaslack

[![Build Status](https://github.com/jameswoolfenden/terraform-aws-lambdaslack/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/jameswoolfenden/terraform-aws-lambdaslack)
[![Latest Release](https://img.shields.io/github/release/jameswoolfenden/terraform-aws-lambdaslack.svg)](https://github.com/jameswoolfenden/terraform-aws-lambdaslack/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-lambdaslack.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-lambdaslack/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-lambdaslack/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-lambdaslack&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-lambdaslack/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-lambdaslack&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module to provision an Lambda based integration to Slack, it can take any number of different lambda triggers and convert them into slack messages. It is modified version of the Cloud formation of https://github.com/arabold/aws-to-slack.

---

This project is 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "lambdaslack" {
  source         = "github.com/jameswoolfenden/terraform-aws-lambdaslack"
  arns           = var.arns
  common_tags    = var.common_tags
  rules          = var.rules
  SLACK_CHANNEL  = var.SLACK_CHANNEL
  SLACK_HOOK_URL = var.SLACK_HOOK_URL
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | n/a |
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_event_target.snstoslack](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) | resource |
| [aws_iam_role.awstoslack](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.AWSLambdaBasicExecutionRole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.CloudWatchReadOnlyAccess](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lambda_function.awstoslack](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_permission.EventsToLambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |
| [aws_lambda_permission.SNSToLambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |
| [aws_sns_topic_subscription.snstoslack](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [null_resource.node_modules](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [archive_file.lambda](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.assumerole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_SLACK_CHANNEL"></a> [SLACK\_CHANNEL](#input\_SLACK\_CHANNEL) | Name of the SLACK Channel | `string` | n/a | yes |
| <a name="input_SLACK_HOOK_URL"></a> [SLACK\_HOOK\_URL](#input\_SLACK\_HOOK\_URL) | The Slack Webhook URL | `string` | n/a | yes |
| <a name="input_arns"></a> [arns](#input\_arns) | n/a | `list(any)` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | The name of the lambda function | `string` | `"aws-to-slack-Handler"` | no |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | lambda ram | `number` | `256` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | SNS Subscription Protocol | `string` | `"lambda"` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the IAM role | `string` | `"aws-to-slack-HandlerRole"` | no |
| <a name="input_rules"></a> [rules](#input\_rules) | n/a | `list(any)` | n/a | yes |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | n/a | `string` | `"nodejs6.10"` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | lambda timeout | `number` | `10` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [Cloudformation lambda for slack](https://github.com/arabold/aws-to-slack) - Forward AWS CloudWatch Alarms and other notifications from Amazon SNS to Slack."

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-lambdaslack/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-lambdaslack/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-lambdaslack&url=https://github.com/jameswoolfenden/terraform-aws-lambdaslack
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-lambdaslack&url=https://github.com/jameswoolfenden/terraform-aws-lambdaslack
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-lambdaslack
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-lambdaslack
[share_email]: mailto:?subject=terraform-aws-lambdaslack&body=https://github.com/jameswoolfenden/terraform-aws-lambdaslack
