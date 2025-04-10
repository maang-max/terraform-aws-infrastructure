

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

# EC2 Instances and Auto Scaling Group
module "ec2" {
  source = "./ec2"
}
