resource "aws_key_pair" "terraform_key" {
  key_name   = var.key_name
  public_key = file("devops_key.pub")
}

resource "aws_default_vpc" "default" {

}



resource "aws_security_group" "terraform_sg" {
  name = "terraform_sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "web" {
  count = 3
  ami                    = var.ami_id # Ubuntu Server        
  instance_type          = var.instance_type
  root_block_device {
    volume_size = var.volume_size
    volume_type = "gp3"
  }
  key_name               = aws_key_pair.terraform_key.key_name
  vpc_security_group_ids = [aws_security_group.terraform_sg.id]
  tags = {
    Name = "web-server-${count.index + 1}"
  }
}

