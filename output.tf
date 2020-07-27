output debian10 {
  description = "debian buster(10)"
  value = {
    amd64 = data.aws_ami.debian10-amd64.id
    arm64 = data.aws_ami.debian10-arm64.id
  }
}
output ubuntu2004 {
  description = "ubuntu 20.04LTS(Focal Fossa)"
  value = {
    amd64 = data.aws_ami.ubuntu2004-amd64.id
    arm64 = data.aws_ami.ubuntu2004-arm64.id
  }
}
output amazonlinux2 {
  description = "Amazon Linux2"
  value = {
    amd64 = data.aws_ami.amzn2-amd64.id
    arm64 = data.aws_ami.amzn2-arm64.id
  }
}
