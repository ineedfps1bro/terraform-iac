package terraform.s3

deny[msg] {
  resource := input.resource.aws_s3_bucket[_]
  not resource.server_side_encryption_configuration
  msg = sprintf("Bucket %s must have encryption enabled.", [resource.bucket])
}
