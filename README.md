[![Slalom][logo]](https://slalom.com)

terraform-aws-lambdaslack

[![Build Status](https://travis-ci.com/madsalamanders/terraform-aws-lambdaslack.svg?branch=master)](https://travis-ci.com/madsalamanders/terraform-aws-lambdaslack)
[![Latest Release](https://img.shields.io/github/release/madsalamanders/terraform-aws-lambdaslack.svg)](https://github.com/madsalamanders/terraform-aws-lambdaslack/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![pre-commit](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Terraform module to provision an Lambda based integration to Slack, it can take any number of different lambda triggers and convert them into slack messages. It is modified version of the Cloud formation of https://github.com/arabold/aws-to-slack.

---

This project is 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "lambdaslack" {
  source         = "github.com/madsalamanders/terraform-aws-lambdaslack"
  arns           = var.arns
  common_tags    = var.common_tags
  rules          = var.rules
  SLACK_CHANNEL  = var.SLACK_CHANNEL
  SLACK_HOOK_URL = var.SLACK_HOOK_URL
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| archive | n/a |
| aws | n/a |
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| SLACK\_CHANNEL | Name of the SLACK Channel | `string` | n/a | yes |
| SLACK\_HOOK\_URL | The Slack Webhook URL | `string` | n/a | yes |
| arns | n/a | `list` | n/a | yes |
| common\_tags | This is to help you add tags to your cloud objects | `map` | n/a | yes |
| function\_name | The name of the lambda function | `string` | `"aws-to-slack-Handler"` | no |
| role\_name | The name of the IAM role | `string` | `"aws-to-slack-HandlerRole"` | no |
| rules | n/a | `list` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Related Projects

Check out these related projects.

- [Cloudformation lambda for slack](https://github.com/arabold/aws-to-slack) - Forward AWS CloudWatch Alarms and other notifications from Amazon SNS to Slack."

## Help

**Got a question?**

File a GitHub [issue](https://github.com/madsalamanders/terraform-aws-lambdaslack/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/madsalamanders/terraform-aws-lambdaslack/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-lambdaslack&url=https://github.com/madsalamanders/terraform-aws-lambdaslack
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-lambdaslack&url=https://github.com/madsalamanders/terraform-aws-lambdaslack
[share_reddit]: https://reddit.com/submit/?url=https://github.com/madsalamanders/terraform-aws-lambdaslack
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/madsalamanders/terraform-aws-lambdaslack
[share_email]: mailto:?subject=terraform-aws-lambdaslack&body=https://github.com/madsalamanders/terraform-aws-lambdaslack
