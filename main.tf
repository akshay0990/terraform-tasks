# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key  = "AKIAZORCJCBVGRUCN326"
  secret_key  = "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"
}

resource "aws_iam_user" "terraform_user" {
  name = "terraform_user"
  path = "/"
  force_destroy = true
}

resource "aws_iam_user_login_profile" "terraform_user" {
  user    = aws_iam_user.terraform_user.name
  pgp_key = "keybase:test"
}