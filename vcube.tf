provider "aws" {
  region     = "eu-north-1"
  access_key = "AKIA4WZKLBLU7KGE6OO6"
  secret_key = "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"
}

# Create a bucket
resource "aws_s3_bucket" "b1" {

  bucket = "s3-terraform-bucket-12345689"

  acl    = "private"   # or can be "public-read"

  tags = {

    Name        = "My bucket"

    Environment = "Dev"

  }

}
