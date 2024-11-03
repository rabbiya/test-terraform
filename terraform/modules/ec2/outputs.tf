output "eip_public_ip" {
  value = aws_eip_association.mawsim_eip_association.public_ip
  description = "The public IP address of the existing Elastic IP associated with the EC2 instance."
}
