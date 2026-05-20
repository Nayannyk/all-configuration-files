terraform {
  backend "s3" {
    bucket         = "nayan-terraform-state-ap-south-1-demo"
    key            = "terraform-in-one-shot/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
