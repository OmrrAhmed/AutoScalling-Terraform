resource "aws_lb_target_group" "TG-001" {
  name     = var.target-group-name
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc-01.id
}