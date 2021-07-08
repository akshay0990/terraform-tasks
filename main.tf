# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key  = ""
  secret_key  = ""
}

resource "aws_iam_user" "terraform_user1" {
  name = "terraform_user1"
  path = "/"
  force_destroy = true
}

resource "aws_iam_user" "terraform_user2" {
  name = "terraform_user2"
  path = "/"
  force_destroy = true
}

resource "aws_iam_user_login_profile" "terraform_user1" {
  user    = aws_iam_user.terraform_user1.name
  pgp_key = "keybase:test"
}

resource "aws_iam_user_login_profile" "terraform_user2" {
  user    = aws_iam_user.terraform_user2.name
  pgp_key = "keybase:test"
}