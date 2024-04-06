output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "List of IDs of the subnets created within the VPC."
  value       = aws_subnet.main[*].id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway attached to the VPC."
  value       = aws_internet_gateway.main.id
}
