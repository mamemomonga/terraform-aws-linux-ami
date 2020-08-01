output debian {
  description = "debian"
  value = {
    "10" = {
      amd64 = data.aws_ami.debian10-amd64.id
      arm64 = data.aws_ami.debian10-arm64.id
    }
  }
}
output ubuntu {
  description = "ubuntu"
  value = {
    "2004" = {
      amd64 = data.aws_ami.ubuntu2004-amd64.id
      arm64 = data.aws_ami.ubuntu2004-arm64.id
    }
  }
}
output amazonlinux {
  description = "Amazon Linux"
  value = {
    "2" = {
      amd64 = data.aws_ami.amzn2-amd64.id
      arm64 = data.aws_ami.amzn2-arm64.id
    }
  }
}
