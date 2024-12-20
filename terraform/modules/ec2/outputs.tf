# outputs.tf in your EC2 module

output "instance_eip" {
  value       = aws_eip_association.mawsim_eip_association.public_ip
  description = "The public IP address of the Elastic IP associated with the EC2 instance."
}

output "instance_id" {
  value       = aws_instance.mawsim_dev_server.id
  description = "The ID of the EC2 instance."
}
