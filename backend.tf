terraform {
  backend "s3" {
    bucket         = "terraform-state-rishu-1212"
    key            = "eks/dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}