#create VPC With Cidr Block 10.10.0.0/16
resource "aws_vpc" "vpc-01" {
  cidr_block           = var.cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc-name
  }
}
