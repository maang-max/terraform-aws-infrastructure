

# VPC Module
module "vpc" {
  source = "./vpc"
}

# Security Groups Module
module "security_groups" {
  source = "./security_groups"
}

# Load Balancer Module
module "load_balancer" {
  source = "./load_balancer"
}
output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer."
  value       = module.load_balancer.alb_dns_name
}

# EC2 Instances and Auto Scaling Group
module "ec2" {
  source = "./ec2"
}

output "ec2_instance_a_public_ip" {
  description = "The public IP address of EC2 Instance A."
  value       = module.ec2.instance_a_public_ip
}

output "ec2_instance_b_public_ip" {
  description = "The public IP address of EC2 Instance B."
  value       = module.ec2.instance_b_public_ip
}
