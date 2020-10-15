variable "region" {
  default     = "eu-west-1"
  description = "AWS Ireland region"
}

provider "aws" {
  region  = "eu-west-1"
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = "smartshore-assignment-ali"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  name                 = "smartshore-assignment-ali"
  cidr                 = "172.30.0.0/16"
  azs                  = data.aws_availability_zones.available.names
  private_subnets      = ["172.30.1.0/24", "172.30.2.0/24", "172.30.3.0/24"]
  public_subnets       = ["172.30.4.0/24"]
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  public_subnet_tags = {
    "name" = "${local.cluster_name}-public"
  }

}

