output "vpc_id" {
    description = "VPC ID"
    value = module.vpc.vpc_id
}

output "vpc_cidr_blocks" {
    description = "VPC CIDR Blocks"
    value = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "Private Subnets in VPC"
  value = module.vpc.private_subnets
}

output "public_subnets" {
  description = "Public Subnets in VPC"
  value = module.vpc.public_subnets
}

output "nat_public_ips" {
  description = "Elastic IPs in NAT Gateway"
  value = module.vpc.nat_public_ips
}

output "azs" {
  description = "Availability zones"
  value = module.vpc.azs
}