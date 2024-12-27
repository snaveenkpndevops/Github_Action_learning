terraform {
  backend "s3" {
    bucket = "terra-backend-github"
    region = "ap-south-1"
    key    = "terraform"
  }
}