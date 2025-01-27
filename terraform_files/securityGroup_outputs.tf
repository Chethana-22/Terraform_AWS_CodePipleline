output "public_bastion_sg_group_id" {
  description = "Security Group ID"
  value = module.public_bastion_sg.security_group_id
}

output "public_bastion_sg_group_name" {
  description = "Security Group name"
  value = module.public_bastion_sg.security_group_name
}


output "public_bastion_sg_group_vpc_id" {
  description = "VPC ID"
  value = module.public_bastion_sg.security_group_vpc_id
}


output "private_sg_group_id" {
  description = "Security Group ID"
  value = module.private_sg.security_group_id
}

output "private_sg_group_name" {
  description = "Security Group name"
  value = module.private.security_group_name
}


output "private_sg_group_vpc_id" {
  description = "VPC ID"
  value = module.private_sg.security_group_vpc_id
}
