provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "myec233" {
  ami = ""
  instance_type = "t2.micro"
  tags = {
    Name = "terra-jenkins"
  }
}
resource "aws_s3_bucket" "mys3" {
  bucket = "terraform-buckt-shay"
}