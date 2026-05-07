terraform {
  backend "s3" {
    bucket = "s3-vikas-guvi-terraform"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}
