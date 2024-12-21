provider "aws" {
    region = "ap-northeast-1"

  }
  #for creating bucket

  resource "aws_s3_bucket" "my_bucket" {

    bucket = "replication-1234-bucket01"
    
  }

  #for adding object inside bucket

  resource "aws_s3_object" "bucket_data" {
    bucket = aws_s3_bucket.my_bucket.bucket
    source = "./file.txt"
    key = "mydate.txt"

    
  }
