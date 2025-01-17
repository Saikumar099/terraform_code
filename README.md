# Terraform EC2 and Networking Setup

This Terraform project consists of multiple modules to provision EC2 instances and the associated networking setup (VPC, Subnets, Security Groups, etc.) in AWS. The configuration leverages Terraform modules for better code reuse and separation of concerns.

## Project Structure

modules 
ec2_instance # Module for provisioning EC2 instances
networking # Module for networking (VPC, Subnets, SGs, etc.) 
s3_bucket # Module for provisioning S3 bucket
main.tf # Main Terraform configuration to instantiate modules
variables.tf # Input variables for the Terraform project 
outputs.tf # Outputs relevant information (public IPs, etc.) 
terraform.tfvars # Variable values (environment-specific)
backend.tf # Backend configuration for state storage

## Prerequisites

Before you begin, ensure that you have the following:

- **Terraform** installed on your local machine.
- **AWS account** with necessary permissions to create resources such as EC2, VPC, Security Groups, etc.
- **AWS CLI** configured with the appropriate credentials (e.g., `aws configure`).

## Setup and Configuration

1. **Clone this repository to your local machine**:

   git clone https://github.com/Saikumar099/terraform_code.git
   cd terraform_code

2. Modify the terraform.tfvars file (optional):
 
      If you want to deploy the resources in a specific AWS region or with specific instance types, modify the values in the terraform.tfvars file

3. Initialize Terraform:

      Run the following command to initialize Terraform and download necessary providers and modules:

               terraform init

4. Configure Backend (optional):

      The backend.tf file is used to configure remote state storage. If you're using an S3 bucket for storing the Terraform state, ensure the backend configuration in the backend.tf file     is correct, including your bucket name and region.

5. Plan the Deployment:

      Run the following command to preview the resources Terraform will create:

                terraform plan

6. Apply the Configuration:

      To create the resources, run:

                terraform apply

7. Access the Resources:

      Once the infrastructure is deployed, Terraform will output useful information such as EC2 public IPs, VPC CIDR blocks, and more. Access these outputs via:

                terraform output

8. Destroy the Resources:

      To remove all resources created by Terraform, run:\

                terraform destroy
