provider "aws" {

  access_key = "AKIA2GSPVAALFR4WRS5V"
  secret_key = "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"
  region     = "us-east-1"

}

resource "aws_s3_bucket" "new_bucket" {
  bucket = "11906119a"
  acl    = "private"

  versioning {
    enabled = true
  }
}