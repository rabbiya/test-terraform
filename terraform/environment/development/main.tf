provider "aws" {
  region = "me-central-1"  # Change this to your desired AWS region
}

module "security_group" {
  source = "./security_group"
}

module "key_pair" {
  source        = "./key_pair"
  key_name      = var.key_name
  ssh_public_key = var.ssh_public_key
}

module "ec2" {
  source          = "./ec2"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_name  = var.instance_name
  eip_name       = var.eip_name
  key_name       = module.key_pair.key_name  # Get the key name from the key pair module
  sg_id         = module.security_group.sg_id  # Get the security group ID from the security group module
}
