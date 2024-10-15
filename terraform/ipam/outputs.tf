output "ipam_pool_id" {
  description = "The ID of the IPAM pool."
  value       = aws_vpc_ipam_pool.main.id
}

output "allocated_cidr_block" {
  description = "The CIDR block allocated by IPAM."
  value       = aws_vpc_ipam_pool_cidr.main.cidr
}
