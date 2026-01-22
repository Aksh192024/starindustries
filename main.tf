module "vpc" {
  source = "git::https://github.com/Aksh192024/Terraform_modules.git//vpc"

  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

#subnet

# Public Subnet
module "public_subnet" {
  source            = "git::https://github.com/Aksh192024/Terraform_modules.git//subnet"
  vpc_id            = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.availability_zone
  is_public         = true
  subnet_name       = var.public_subnet_name
}

# Private Subnet
module "private_subnet" {
  source            = "git::https://github.com/Aksh192024/Terraform_modules.git//subnet"
  vpc_id            = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.availability_zone
  is_public         = false
  subnet_name       = var.private_subnet_name
}
