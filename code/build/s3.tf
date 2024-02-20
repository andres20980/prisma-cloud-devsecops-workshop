provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "fb0f1a62-7eda-4b3a-a422-61dce1cfdd2e"
    git_commit           = "ac8d991287ad5b454fed958e2f87996209462df5"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-02-20 17:33:03"
    git_last_modified_by = "55433196+andres20980@users.noreply.github.com"
    git_modifiers        = "55433196+andres20980"
    git_org              = "andres20980"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
