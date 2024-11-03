# main.tf in your EC2 module

resource "aws_instance" "mawsim_dev_server" {
  ami                    = var.ami_id
  instance_type         = var.instance_type
  key_name              = "test-ra"  # Yahan apne existing key pair ka naam daalain
  vpc_security_group_ids = [var.sg_id]  
  tags = {
    Name = var.instance_name
  }

  root_block_device {
    volume_type = "gp3"
    volume_size = 30  
  }
}

# Existing Elastic IP ko instance ke saath associate karne ka resource
resource "aws_eip_association" "mawsim_eip_association" {
  instance_id   = aws_instance.mawsim_dev_server.id
  allocation_id = "eipalloc-018b5cb889349ff32"  # Yahan apne EIP ka actual allocation ID daalain
}
