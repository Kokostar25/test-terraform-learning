resource "aws_subnet" "my-subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_in_vairiable_file

  tags = {
    Name = "my-subnet"
  }
}
