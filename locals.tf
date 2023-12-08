locals {
  tags = {
    Terraform   = "true"
    Environment = "prod"
  }
}

locals {
  common_tags = {
    cost_center = "123456",
    department  = "Engineering"
  }
}
