# Learn Terraform for_each
Follow along with [this tutorial on HashiCorp Learn](https://learn.hashicorp.com/tutorials/terraform/for-each).

## Goal
* provision multiple resources (VPC, load balancer, EC2 instances) -- via -- `for_each`

## Prerequisites
* Terraform [v1.7+](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) installed locally
* AWS account with [associated credentials](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration)
  * via
    * add in the 'provider' block
    * environment variables
      * 'AWS_ACCESS_KEY_ID'
      * 'AWS_SECRET_ACCESS_KEY'
      * 'AWS_REGION'
    * credential files
      * `aws config` & pass the 'AWS_ACCESS_KEY_ID' & 'AWS_SECRET_ACCESS_KEY'

## How to run?
* `terraform init`

## Notes
* 'variables.tf'
  * Some variables depend on creating 1 or several ones
* 'main.tf''s `resource aws_instance`
  * for several one's / VPc -> use the module created
    * Reason: `count` & `for_each` can NOT be used at the same time / block
* 'outputs.tf'
  * `keys(map)` -> list
  * `sort(list)` -> list
* [for expressions](https://developer.hashicorp.com/terraform/language/expressions/for)
