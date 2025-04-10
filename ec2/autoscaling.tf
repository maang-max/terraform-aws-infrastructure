resource "aws_autoscaling_group" "example_asg" {
  desired_capacity     = 2
  max_size             = 4
  min_size             = 2
  vpc_zone_identifier  = [aws_subnet.public_subnet_a.id, aws_subnet.public_subnet_b.id]
  launch_template {
    id      = aws_launch_template.example_lt.id
    version = "$Latest"
  }
}
