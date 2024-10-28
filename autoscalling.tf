resource "aws_autoscaling_group" "AS-001" {
  vpc_zone_identifier = [aws_subnet.subnet-01.id, aws_subnet.subnet-02.id, aws_subnet.subnet-03.id]
  desired_capacity    = 3
  max_size            = 3
  min_size            = 1


  traffic_source {
    identifier = aws_lb_target_group.TG-001.arn

  }
  launch_template {
    id      = aws_launch_template.Prod-01.id
    version = "$Latest"
  }
}