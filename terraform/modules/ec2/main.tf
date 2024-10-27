resource "aws_instance" "mawsim_dev_server" {
  ami                    = var.ami_id
  instance_type         = var.instance_type
  key_name              = var.key_name
  vpc_security_group_ids = [var.sg_id]  
  tags = {
    Name = var.instance_name
  }

  root_block_device {
    volume_type = "gp3"
    volume_size = 30  
  }
}

resource "aws_eip" "mawsim_dev_eip" {
  instance = aws_instance.mawsim_dev_server.id
  tags = {
    Name = var.eip_name
  }
}
