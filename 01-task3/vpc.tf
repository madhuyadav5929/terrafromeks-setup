module "vpc" {
  source                  = "terraform-aws-modules/vpc/aws"
  name                    = var.vpc_id
  cidr                    = var.vpc_cidr
  azs                     = var.azs
  private_subnets         = var.private_subnets
  public_subnets          = var.public_subnets
  enable_dns_hostnames    = true
  enable_nat_gateway      = true
  single_nat_gateway      = true
  tags = {
    "kubernetes.io/cluster/my-eks-cluster" = "shared"
  }
  public_subnet_tags = {
    "kubernetes.io/cluster/my-eks-cluster" = "shared"
    "kubernetes.io/role/elb"               = 1
  }
  private_subnet_tags = {
    "kubernetes.io/cluster/my-eks-cluster" = "shared"
    "kubernetes.io/role/internal-elb"      = 1
  }
}