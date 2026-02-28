output "vpc_id" {
  value       = aws_vpc.lab_vpc.id
  description = "VPC ID"
}

output "public_subnet_id" {
  value       = aws_subnet.public_subnet.id
  description = "Public subnet ID"
}

output "private_subnet_id" {
  value       = aws_subnet.private_subnet.id
  description = "Private subnet ID"
}

output "internet_gateway_id" {
  value       = aws_internet_gateway.lab_igw.id
  description = "Internet Gateway ID"
}

output "nat_gateway_id" {
  value       = aws_nat_gateway.lab_nat.id
  description = "NAT Gateway ID"
}

output "public_route_table_id" {
  value       = aws_route_table.public_rt.id
  description = "Public route table ID"
}

output "private_route_table_id" {
  value       = aws_route_table.private_rt.id
  description = "Private route table ID"
}