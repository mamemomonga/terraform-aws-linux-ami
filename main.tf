/**
 * # Favorite Linux AMIs for terraform
 * Usage:
 *
 * ```hcl
 * module linux-ami {
 *   source  = "mamemomonga/linux-ami/aws"
 * }
 * 
 * output ami-debian {
 *   value = module.linux-ami.debian10.amd64
 * }
 * 
 * output ami-ubuntu {
 *   value = module.linux-ami.ubuntu2004.amd64
 * }
 * 
 * output ami-amazon {
 *   value = module.linux-ami.amazonlinux2.amd64
 * }
 * 
 * output amis {
 *   value = module.linux-ami
 * }
 * ```
 *
 * Output Example
 * ```
 * Outputs:
 * 
 * ami-amazon = ami-0cc75a8978fbbc969
 * ami-debian = ami-025e5dec754f6ddbd
 * ami-ubuntu = ami-0461b11e2fad8c14a
 * amis = {
 *   "amazonlinux2" = {
 *     "amd64" = "ami-0cc75a8978fbbc969"
 *     "arm64" = "ami-03bbf9057affc0643"
 *   }
 *   "debian10" = {
 *     "amd64" = "ami-025e5dec754f6ddbd"
 *     "arm64" = "ami-0e356e69792556098"
 *   }
 *   "ubuntu2004" = {
 *     "amd64" = "ami-0461b11e2fad8c14a"
 *     "arm64" = "ami-05491233371f51af2"
 *   }
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
