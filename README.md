# Favorite Linux AMIs for terraform  
Usage:

```hcl
module linux-ami {
  source  = "mamemomonga/linux-ami/aws"
}

output ami-debian {
  value = module.linux-ami.debian10.amd64
}

output ami-ubuntu {
  value = module.linux-ami.ubuntu2004.amd64
}

output ami-amazon {
  value = module.linux-ami.amazonlinux2.amd64
}

output amis {
  value = module.linux-ami
}
```

Output Example
```
Outputs:

ami-amazon = ami-0cc75a8978fbbc969
ami-debian = ami-025e5dec754f6ddbd
ami-ubuntu = ami-0461b11e2fad8c14a
amis = {
  "amazonlinux2" = {
    "amd64" = "ami-0cc75a8978fbbc969"
    "arm64" = "ami-03bbf9057affc0643"
  }
  "debian10" = {
    "amd64" = "ami-025e5dec754f6ddbd"
    "arm64" = "ami-0e356e69792556098"
  }
  "ubuntu2004" = {
    "amd64" = "ami-0461b11e2fad8c14a"
    "arm64" = "ami-05491233371f51af2"
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

