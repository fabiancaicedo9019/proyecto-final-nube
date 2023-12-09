# Output para la VPC
output "vpc_id" {
  value       = aws_vpc.current_vpc
  description = "ID de la VPC"
}

# Output para la Subnet Database
output "database_subnet_id" {
  value       = aws_subnet.subnet_database.id
  description = "ID de la subnet database"
}

# Output para la Subnet Backend
output "backend_subnet_id" {
  value       = aws_subnet.subnet_backend.id
  description = "ID de la subnet backend"
}

# Output para la Subnet ERP
output "erp_subnet_id" {
  value       = aws_subnet.subnet_erp.id
  description = "ID de la subnet ERP"
}

# Output para la Subnet Frontend
output "frontend_subnet_id" {
  value       = aws_subnet.subnet_frontend.id
  description = "ID de la subnet frontend"
}