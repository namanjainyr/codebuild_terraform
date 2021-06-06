terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

#Create AWS Bucket
resource "aws_s3_bucket" "bucketb" {
  bucket = "my-tf-test-bucket1234234"
  acl    = "private"
}

#Upload a object in S3
resource "aws_s3_bucket_object" "object" {
  bucket = "my-tf-test-bucket1234234"
  key    = "new_object_key"
  source = "hello.txt"
}
