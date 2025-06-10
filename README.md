# Terraform EKS IRSA Module

This is a reusable Terraform module for provisioning an Amazon EKS (Elastic Kubernetes Service) cluster with IAM Roles for Service Accounts (IRSA) and managed node groups.

## Features

- Creates EKS cluster with custom logging and networking
- Provisions managed node groups with scaling configuration
- Enables OIDC provider for IRSA support
- Outputs essential cluster information
- Designed for reusability and scalability

## Usage

```
module "eks" {
  source              = "../modules/eks"
  cluster_name        = "demo-eks"
  cluster_role_arn    = "arn:aws:iam::123456789012:role/EKSClusterRole"
  node_group_role_arn = "arn:aws:iam::123456789012:role/EKSNodeGroupRole"
  subnet_ids          = ["subnet-abc", "subnet-def"]
  desired_size        = 2
  max_size            = 4
  min_size            = 1
  instance_types      = ["t3.medium"]
  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}
```

## Inputs

See `variables.tf` for a full list of input parameters.

## Outputs

- `cluster_name`
- `cluster_endpoint`
- `cluster_certificate_authority_data`
- `oidc_provider_arn`
- `node_group_name`

## Requirements

- Terraform >= 1.0
- AWS CLI configured
- IAM roles created for EKS cluster and node groups


