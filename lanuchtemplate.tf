resource "random_id" "server" {
  byte_length = 3
}
#Create Keygen in the same project file
#run this command in the cmd in the same dirctroy "ssh-keygen -t rsa -b 2048 -f 'key-name' "
resource "aws_key_pair" "my_key" {
  key_name   = var.keygyn-name
  public_key = file("${path.module}/${var.keygyn-name}.pub")
}
resource "aws_launch_template" "Prod-01" {
  name                   = var.lanuch-temp-name
  image_id               = var.EC2-ami
  instance_type          = var.EC2-family
  key_name               = var.keygyn-name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  monitoring {
    enabled = true
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "PROD-${random_id.server.hex}"
    }
  }


}