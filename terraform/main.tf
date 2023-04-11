provider "aws" {

  access_key = "701320462358"
  secret_key = "oaDODMm2TD4ujcg00IOm3gRMc5lKJxiwz+iNlBgJ"
  region     = "us-east-1"

}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "11906119"
  acl    = "private"

  versioning {
    enabled = true
  }
}