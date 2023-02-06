terraform {
  backend "s3" {
    bucket = "my-s3bucket-8684"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "mukesh-table"
  }
}