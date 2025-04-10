output "instance_a_public_ip" {
  description = "The public IP address of EC2 Instance A."
  value       = aws_instance.example_instance_a.public_ip
}

output "instance_b_public_ip" {
  description = "The public IP address of EC2 Instance B."
  value       = aws_instance.example_instance_b.public_ip
}
