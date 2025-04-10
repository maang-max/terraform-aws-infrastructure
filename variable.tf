# AWS Region
variable "aws_region" {
  description = "The AWS region where resources will be deployed."
  type        = string
  default     = "us-east-1"
}

# VPC Configuration
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets in different Availability Zones."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "List of Availability Zones to use for the subnets."
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# EC2 Instance Configuration
variable "instance_type" {
  description = "The instance type for EC2 instances."
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instances (e.g., Amazon Linux 2)."
  type        = string
  default     = "ami-0c02fb55956c7d316" # Default AMI for Amazon Linux 2 in us-east-1
}

variable "key_pair_name" {
  description = "The name of the SSH key pair to use for EC2 instances."
  type        = string
  default     = "my-key-pair" # Replace with your key pair name
}

# Security Groups
variable "allowed_ssh_ip" {
  description = "The IP address or CIDR block allowed to SSH into the EC2 instances."
  type        = string
  default     = "0.0.0.0/0" # Replace with your specific IP for better security
}

# Auto Scaling Group Configuration
variable "asg_desired_capacity" {
  description = "The desired number of EC2 instances in the Auto Scaling Group."
  type        = number
  default     = 2
}

variable "asg_min_size" {
  description = "The minimum number of EC2 instances in the Auto Scaling Group."
  type        = number
  default     = 2
}

variable "asg_max_size" {
  description = "The maximum number of EC2 instances in the Auto Scaling Group."
  type        = number
  default     = 4
}

# CloudWatch Alarms
variable "cpu_alarm_threshold" {
  description = "The CPU utilization threshold (percentage) for triggering an alarm."
  type        = number
  default     = 80
}

variable "http_5xx_alarm_threshold" {
  description = "The HTTP 5xx error count threshold for triggering an alarm."
  type        = number
  default     = 10
}

variable "sns_email" {
  description = "The email address to receive CloudWatch alarm notifications."
  type        = string
  default     = "your-email@example.com" # Replace with your email address
}
