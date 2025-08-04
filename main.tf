module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 4.0"

  bucket = "terraform-lab-sebastian-20240804"  # Change to a globally unique name!
  tags = {
    Owner   = "sebastian"
    Purpose = "terraform-registry-demo"
  }

  # Best-practice security settings
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  # Uncomment to add encryption (for policy to pass)
  # server_side_encryption_configuration = {
  #   rule = {
  #     apply_server_side_encryption_by_default = {
  #       sse_algorithm     = "AES256"
  #     }
  #   }
  # }
}
