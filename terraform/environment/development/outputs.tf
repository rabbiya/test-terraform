output "security_group_id" {
  value = module.security_group.sg_id  # Security Group ID from the security group module
}

output "instance_eip" {
  value = module.ec2.mawsim_dev_eip  # Use the correct output name from the module
}
