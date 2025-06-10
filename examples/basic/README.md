

# Basic Usage Example

This directory demonstrates a basic example of how to use the reusable EKS module.

## Requirements

- AWS credentials configured
- Terraform 1.0 or later

## Usage

```
terraform init
terraform plan
terraform apply
```

## Inputs

Refer to the main [variables.tf](../../modules/eks/variables.tf) file for required and optional inputs.

## Notes

- Ensure you have created IAM roles for the EKS cluster and node group before applying this example.
- Subnet IDs should belong to the same VPC.
- You can modify instance types and scaling configuration as per your workload needs.