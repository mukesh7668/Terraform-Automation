terraform {
  backend "s3" {
    bucket = "my-bucket-mukesh"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "mukesh-table"
  }
}
