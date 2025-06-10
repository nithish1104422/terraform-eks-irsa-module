provider "aws" {
  region = "us-west-2"
}

module "eks" {
  source              = "../../modules/eks"
  cluster_name        = "demo-eks"
  cluster_role_arn    = "arn:aws:iam::123456789012:role/EKSClusterRole"
  node_group_role_arn = "arn:aws:iam::123456789012:role/EKSNodeGroupRole"
  subnet_ids          = ["subnet-abc123", "subnet-def456"]

  instance_types = ["t3.medium"]
  desired_size   = 2
  max_size       = 4
  min_size       = 1

  tags = {
    Environment = "dev"
    Project     = "eks-irsa"
  }
}
