
# Terraform Infrastructure Deployment
This repository contains Terraform configurations to deploy a highly available and scalable infrastructure on AWS. 

The infrastructure includes:

A Virtual Private Cloud (VPC) with two public subnets across different Availability Zones (AZs).
An Application Load Balancer (ALB) to distribute traffic across EC2 instances.
Two EC2 instances running a basic web server behind the ALB.
Security groups configured to allow only necessary traffic.
Optional auto-scaling group for cost optimization and high availability.


Before deploying this infrastructure, ensure you have the following:

AWS Account : You need an active AWS account with sufficient permissions to create VPCs, subnets, EC2 instances, and other resources.

Terraform Installed : Install Terraform by following the official guide: https://developer.hashicorp.com/terraform/downloads

AWS CLI Configured : Configure your AWS credentials using the AWS CLI:
bash

Project Structure

The Terraform configuration is organized into modular files for better readability and maintainability. Below is the directory structure:

├── main.tf          # Root module that calls other modules 

├── variables.tf     # Input variables for customization

├── outputs.tf       # Outputs such as ALB DNS name

├── providers.tf     # AWS provider configuration

├── vpc/             # VPC-related configurations

│   ├── vpc.tf

│   ├── subnets.tf

│   ├── internet_gateway.tf

│   └── route_tables.tf

├── security_groups/ # Security group configurations

│   ├── alb_sg.tf

│   └── instance_sg.tf

├── load_balancer/   # ALB and target group configurations

│   ├── alb.tf

│   ├── target_group.tf

│   └── listener.tf

├── ec2/             # EC2 instances and auto-scaling configurations

│   ├── instances.tf

│   └── autoscaling.tf

└── data.tf          # Data sources (if needed)

Resources Deployed
The following AWS resources are created by this Terraform configuration:

# VPC

A custom VPC with CIDR block 10.0.0.0/16.

# Subnets
Two public subnets ( 10.0.1.0/24 and 10.0.2.0/24 ) in different AZs.
# Internet Gateway
Attached to the VPC to enable internet access.

# Route Tables
Public route table with a default route to the internet gateway.
# Security Groups
One for the ALB (HTTP traffic) and one for EC2 instances (HTTP and SSH).
Application Load Balancer
Distributes traffic across EC2 instances.
# EC2 Instances
Two instances running a basic Apache web server.
Auto Scaling Group (Optional)
Ensures scalability and high availability by managing EC2 instances.

Setup Instructions
Clone the Repository :
git clone https://github.com/maang-max/terraform-aws-infrastructure.git
cd terraform-aws-infrastructure

Initialize Terraform :
Run the following command to initialize Terraform and download the required providers:

terraform init

Review the Plan :

terraform plan

Deploy the Infrastructure : Apply the Terraform configuration to create the resources:

terraform apply

Confirm the deployment by typing yes when prompted.

# Accessing the Application
Once the infrastructure is deployed, Terraform will output the DNS name of the Application Load Balancer. Use the following steps to access the application:

# Find the ALB DNS Name :
After running terraform apply, the ALB DNS name will be displayed in the outputs. 

For example:

alb_dns_name = "example-alb-123456789.us-east-1.elb.amazonaws.com"

Open the Application in a Browser :

Open the ALB DNS name in your browser: http://<alb_dns_name>

You should see a webpage displaying either "Hello from Instance A" or "Hello from Instance B", depending on which EC2 instance handles the request.

# Cost Optimization

To minimize costs while maintaining performance:

# Instance Types :
 
The configuration uses t3.micro instances, which are cost-effective and suitable for lightweight workloads.
Adjust the instance type in instances.tf if higher performance is required.

# Auto Scaling :
The auto-scaling group ensures that only the necessary number of instances are running based on traffic demand.
Modify the desired_capacity, min_size, and max_size parameters in autoscaling.tf to control scaling behavior.
# Spot Instances :
Consider using Spot Instances for non-critical workloads to reduce costs further.
# Cleanup
To avoid unexpected charges, destroy the infrastructure when it is no longer needed:

Run the following command to delete all resources:

terraform destroy

Confirm the deletion by typing yes when prompted.

Contributing
If you would like to contribute to this project, feel free to fork the repository and submit a pull request. Ensure that your changes are well-documented and tested.

License

This project is licensed under the MIT License.

Contact

For questions or feedback, please contact:

Name : Marian Anghel

Email : marian.anghel@gmail.com
## Authors

- [@maang-max](https://www.github.com/maang-max)

