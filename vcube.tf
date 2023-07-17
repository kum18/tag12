provider "aws" {
  region     = "eu-north-1"
  access_key = ""AKIA4WZKLBLUVADCNE4B"
  secret_key = ""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"
}

# Create a bucket
resource "aws_s3_bucket" "b1" {

  bucket = "s3-terraform-bucket-1234567"

  acl    = "private"   # or can be "public-read"

  tags = {

    Name        = "My bucket"

    Environment = "Dev"

  }

}
