module "test_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 1.0"

  bucket = "test-bucket-name"
  acl = "private"

  versioning = {
    enabled = true
  }
}

module "test_module" {
  source  = "github.com/acaylor/renovate-tf-test.git//test-module?ref=v0.0.1"
}