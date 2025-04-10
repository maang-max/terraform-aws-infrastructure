

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
