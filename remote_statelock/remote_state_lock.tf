terraform {
  backend "s3" {
    bucket = "terraformdemo-mb"
    key    = "statedemo/demolock.tfstate"
    region = "ap-south-1"
    dynamodb_table = "remote-state-lock"
  }
}

resource "time_sleep" "wait_300_seconds" {
  create_duration = "300s"
}
