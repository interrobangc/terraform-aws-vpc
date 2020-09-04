terraform {
  required_version = ">= 0.12.4"
}

module "vpc" {
  source = "github.com/terraform-aws-modules/terraform-aws-vpc?ref=v2.48.0"

  create_vpc = var.create_vpc

  name = "${var.env}-vpc"
  cidr = var.cidr

  azs                     = [var.azs]
  private_subnets         = [var.private_subnets]
  public_subnets          = [var.public_subnets]
  map_public_ip_on_launch = var.map_public_ip_on_launch

  create_database_subnet_group = var.create_database_subnet_group
  database_subnets             = [var.database_subnets]

  redshift_subnets    = [var.redshift_subnets]
  elasticache_subnets = [var.elasticache_subnets]
  intra_subnets       = [var.intra_subnets]

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway

  tags = {
    Terraform = "true"
    env       = var.env
  }
}
