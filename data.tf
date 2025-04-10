# Fetch the latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux_2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"] # Amazon-owned AMIs
}

# Fetch the default VPC (if using an existing VPC instead of creating a new one)
data "aws_vpc" "default_vpc" {
  default = true
}
