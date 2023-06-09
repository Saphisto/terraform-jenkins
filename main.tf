provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "myec233" {
  ami = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"
  tags = {
    Name = "terra-jenkins"
  }
}

resource "aws_s3_bucket" "mys3" {
  bucket = "terraform-buckt-shay-pub"
}

resource "aws_s3_bucket_public_access_block" "mys32" {
  bucket = aws_s3_bucket.mys3.id
  block_public_acls = false
  block_public_policy = false
}