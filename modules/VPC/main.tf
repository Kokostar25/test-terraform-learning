resource "aws_vpc" "dev_vpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "dev_vpc"
  }
}
