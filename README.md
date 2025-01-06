Terraform infra for Jenkins Server
## Terraform commands

  Initializes the working directory containing Terraform configuration files:

```console
$ terraform init
```

  Rewrite Terraform configuration files to a canonical format and style:

```console
$ terraform fmt .
```

  Validate the configuration files in a directory:

```console
$ terraform validate .
```

## Building the cloud infrastructure

   Creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure:

```console
$ terraform plan
```

   Apply a configuration to build infra:

```console
$ terraform apply
```

## Destroying the cloud infrastructure

   Destroy infrastructure:

```console
$ terraform destroy  
```
## Infrastructure managed outside of Terraform  

1. `Elastic IP`: Due to frequent terraform apply and destroy operations, elastic IP is managed independently of Terraform, so as to attach the same elastic IP everytime on doing a 'terraform apply', and dissociating it (not detroy) on doing a 'terraform destroy'.

2. `DNS Hosted Zone`: Hosted zone is a permanent resource, need not be destroyed and recreated everytime with tf apply and destroy operations.  
