terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"  
}

resource "aws_s3_bucket" "data_lake" {
  bucket = "your-unique-data-lake-bucket"
}

resource "aws_dynamodb_table" "data_warehouse" {
  name           = "your-data-warehouse"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}