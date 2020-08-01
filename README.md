# Favorite Linux AMIs for terraform

Get the latest public AMI for the OS

Usage:

```hcl
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
```

Output Example
```
Outputs:

ami_amazonlinux = ami-0cc75a8978fbbc969
ami_debian = ami-025e5dec754f6ddbd
ami_ubuntu = ami-0461b11e2fad8c14a
amis = {
  "amazonlinux" = {
    "2" = {
      "amd64" = "ami-0cc75a8978fbbc969"
      "arm64" = "ami-03bbf9057affc0643"
    }
  }
  "debian" = {
    "10" = {
      "amd64" = "ami-025e5dec754f6ddbd"
      "arm64" = "ami-0e356e69792556098"
    }
  }
  "ubuntu" = {
    "2004" = {
      "amd64" = "ami-0461b11e2fad8c14a"
      "arm64" = "ami-05491233371f51af2"
    }
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | >= 2.69 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.69 |

## Inputs

No input.

## Outputs

| Name | Description |
|------|-------------|
| amazonlinux | Amazon Linux |
| debian | debian |
| ubuntu | ubuntu |

