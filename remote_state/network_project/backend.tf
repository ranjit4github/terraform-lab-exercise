terraform {
  backend "s3" {
    bucket = "terraformdemo-mb"
    key    = "network/eip.tfstate"
    region = "ap-south-1"
  }
}
