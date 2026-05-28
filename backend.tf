terraform {
  backend "s3" {
    bucket = "cmtr-qxgoe9r5-backend-bucket-1779983744"
    key    = "tf_code.tfstate"
    region = "eu-west-1"
  }
}