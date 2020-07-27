# Favorite Linux AMIs for terraform

Usage:

```hcl
module amis {
  source = "mamemomonga/aws-linux-ami"
}
output amis {
  value = module.amis
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
| amazonlinux2 | Amazon Linux2 |
| debian10 | debian buster(10) |
| ubuntu2004 | ubuntu 20.04LTS(Focal Fossa) |

