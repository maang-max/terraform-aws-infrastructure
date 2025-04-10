# Output the DNS name of the Application Load Balancer (ALB)
output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer."
  value       = aws_lb.example_alb.dns_name
}

# Output the public IP addresses of the EC2 instances
output "ec2_instance_a_public_ip" {
  description = "The public IP address of EC2 Instance A."
  value       = aws_instance.example_instance_a.public_ip
}

output "ec2_instance_b_public_ip" {
  description = "The public IP address of EC2 Instance B."
  value       = aws_instance.example_instance_b.public_ip
}

# Output the ARN of the Auto Scaling Group (if applicable)
output "auto_scaling_group_arn" {
  description = "The ARN of the Auto Scaling Group."
  value       = aws_autoscaling_group.example_asg.arn
}

# Output the CloudWatch Log Group for EC2 system logs
output "cloudwatch_log_group" {
  description = "The name of the CloudWatch Log Group for EC2 system logs."
  value       = "/aws/ec2/example-instance"
}

# Output the SNS topic ARN for CloudWatch alarms
output "sns_topic_arn" {
  description = "The ARN of the SNS topic used for CloudWatch alarm notifications."
  value       = aws_sns_topic.alerts_topic.arn
}
