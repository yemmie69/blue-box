terraform {
  backend "s3" {
    bucket = "yemistatefile"
    key    = "blue-box"
    region = "eu-west-1"
  }
}
