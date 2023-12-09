# Define la VPC
resource "aws_vpc" "current_vpc" {
  cidr_block           = var.aws_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "core"
  }
}

# Crea subnets
resource "aws_subnet" "subnet_database" {
  vpc_id     = aws_vpc.current_vpc.id
  cidr_block = var.aws_subnet_database

  tags = {
    Name = "database"
  }
}

resource "aws_subnet" "subnet_backend" {
  vpc_id     = aws_vpc.current_vpc.id
  cidr_block = var.aws_subnet_backend

  tags = {
    Name = "backend"
  }
}

resource "aws_subnet" "subnet_erp" {
  vpc_id     = aws_vpc.current_vpc.id
  cidr_block = var.aws_subnet_erp

  tags = {
    Name = "erp"
  }
}

resource "aws_subnet" "subnet_frontend" {
  vpc_id                  = aws_vpc.current_vpc.id
  cidr_block              = var.aws_subnet_frontend
  map_public_ip_on_launch = "true"

  tags = {
    Name = "frontend"
  }
}