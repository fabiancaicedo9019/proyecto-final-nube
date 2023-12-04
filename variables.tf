# Región de AWS donde se implementarán los recursos
variable "region" {
  description = "Region de AWS donde se crearan los recursos"
  default     = "us-east-1"
  type        = string
}

variable "aws_vpc" {
  description = "VPC en AWS"
  type        = string
}

variable "aws_subnet_database" {
  description = "Subnet Database"
  type        = string
}

variable "aws_subnet_backend" {
  description = "Subnet Backend"
  type        = string
}

variable "aws_subnet_erp" {
  description = "Subnet ERP"
  type        = string
}

variable "aws_subnet_frontend" {
  description = "Subnet Frontends"
  type        = string
}