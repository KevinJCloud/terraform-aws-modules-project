resource "aws_instance" "my_ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.ec2_sub_id

  tags = {
    Name = var.servername
  }
}

