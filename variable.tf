variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

# CIDR block for the public subnet
variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

# CIDR block for the private subnet
variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

# Availability Zone for both subnets
variable "availability_zone" {
  description = "AWS Availability Zone for the subnets"
  type        = string
}

# Name tag for the public subnet
variable "public_subnet_name" {
  description = "Name tag for the public subnet"
  type        = string
}

# Name tag for the private subnet
variable "private_subnet_name" {
  description = "Name tag for the private subnet"
  type        = string
}
