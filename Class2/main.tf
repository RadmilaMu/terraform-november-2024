provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "example" {
  bucket = "kaizen-radmilam"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.example.bucket
  key    = "main.tf"
  source = "main.tf"

}