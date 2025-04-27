terraform {
  backend "s3" {
    bucket = "terraformdemo-mb"
    key    = "statedemo/terraform.tfstate"
    region = "ap-south-1"
  }
}
