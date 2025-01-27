output "ec2_bastion_public_instance_ids" {
  description = "Instance IDs"
  value = module.ec2_public.id
}

output "ec2_bastion_public_ip" {
  description = "Public IP Address"
  value = module.ec2_public.public_ip
}