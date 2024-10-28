resource "aws_lb" "alb-001" {
  name               = var.alb-name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_ssh.id]
  subnets            = [aws_subnet.subnet-01.id, aws_subnet.subnet-02.id, aws_subnet.subnet-03.id]



  tags = {
    Environment = "Dev"
  }
}