/**
 * Usage:
 *
 * ```hcl
 * module amis {
 *   source = "mamemomonga/aws-linux-ami"
 * }
 * output amis {
 *   value = module.amis
 * }
 * ```
*/

# ------------------------
# terraform
# ------------------------
terraform {
  required_version = ">= 0.12"
  required_providers {
    aws    = ">= 2.69"
  }
}

# ------------------------
# https://wiki.debian.org/Cloud/AmazonEC2Image/Buster
# ------------------------
data aws_ami debian10-amd64 {
  most_recent = true
  name_regex  = "^debian-10-amd64-\\d{8}-\\d{3}$"
  owners      = ["136693071363"]
}

data aws_ami debian10-arm64 {
  most_recent = true
  name_regex  = "^debian-10-arm64-\\d{8}-\\d{3}$"
  owners      = ["136693071363"]
}

# ------------------------
# https://cloud-images.ubuntu.com/locator/ec2/
# ------------------------
data aws_ami ubuntu2004-amd64 {
  most_recent = true
  name_regex  = "^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-\\d{8}$"
  owners      = ["099720109477"]
}

data aws_ami ubuntu2004-arm64 {
  most_recent = true
  name_regex  = "^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-arm64-server-\\d{8}$"
  owners      = ["099720109477"]
}

# ------------------------
# Amazon Linux2
# ------------------------
data aws_ami amzn2-amd64 {
  most_recent = true
  name_regex  = "^amzn2-ami-hvm-2.0.\\d{8}.0-x86_64-gp2$"
  owners      = ["amazon"]
}
data aws_ami amzn2-arm64 {
  most_recent = true
  name_regex  = "^amzn2-ami-hvm-2.0.\\d{8}.0-arm64-gp2$"
  owners      = ["amazon"]
}
