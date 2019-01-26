# s3 module 

this module create s3 bucket for lambda


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | name of the bucket for lambdas resources | string | `crypto-lambda-repository` | no |
| region | region from resources | string | `us-east-2` | no |

## Outputs

| Name | Description |
|------|-------------|
| lambda_bucket | bucket name of lambda resources |
