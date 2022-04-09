provider "aws" {
  region = "us-east-1"

}

module "my_vpc_module" {
    source = "./modules/VPC"
    cidr_block = var.cidr

}

module "my_subnet_module" {
    source = "./modules/Subnet"
    vpc_id = module.my_vpc_module.vpc_id_from_vpc_module
    subnet_cidr_in_vairiable_file = var.subnet_cidr
}