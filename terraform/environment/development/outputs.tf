output "security_group_id" {
  value = module.security_group.sg_id  # Security Group ID from the security group module
}

output "instance_eip" {
  value = module.ec2.eip  # Public IP from the EC2 module
}

