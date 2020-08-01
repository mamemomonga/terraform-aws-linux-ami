
variable aws_profile {}

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider aws {
  version = "~> 2.69"
  region  = "ap-northeast-1"
  profile = var.aws_profile
}

# module amis {
#   source = "../.."
# }

# ---------------------------------------

module amis {
  source  = "mamemomonga/linux-ami/aws"
}

output amis {
  value = module.amis
}

output ami_debian {
  value = module.amis.debian.10.amd64
}

output ami_ubuntu {
  value = module.amis.ubuntu.2004.amd64
}

output ami_amazonlinux {
  value = module.amis.amazonlinux.2.amd64
}

# ---------------------------------------

