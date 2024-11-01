provider "aws" {
  region     = "me-central-1"  # Change this to your desired AWS region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "security_group" {
  source = "../../modules/security_group" # Updated path to the security_group module
  sg_name = var.sg_name
}

module "key_pair" {
  source        = "../../modules/key_pair"  # Updated path to the key_pair module
  key_name      = var.key_name
  ssh_public_key = var.ssh_public_key
}

module "ec2" {
  source          = "../../modules/ec2"      # Updated path to the ec2 module
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_name  = var.instance_name
  eip_name       = var.eip_name
  key_name       = module.key_pair.key_name  # Get the key name from the key pair module
  sg_id          = module.security_group.sg_id  # Get the security group ID from the security group module
}
