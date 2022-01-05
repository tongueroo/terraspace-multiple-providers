provider "aws" {
  region = "us-west-2"
  # assume_role {
  #   role_arn     = "arn:aws:iam::111111111111:role/DemoRole1"
  # }
}

# Secondary provider in different region
provider "aws" {
  region = "us-east-1"
  alias = "aws_global"
  # assume_role {
  #   role_arn     = "arn:aws:iam::222222222222:role/DemoRole2
  # }
}
