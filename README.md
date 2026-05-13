# Terraform AWS Modules Project

This project provisions AWS infrastructure using reusable Terraform modules and `for_each`.

## AWS Resources Created

- Amazon S3 Bucket
- VPC
- Internet Gateway
- Route Table
- Public Subnet
- Multiple EC2 Instances

## Key Terraform Concepts Demonstrated

- Terraform Modules
- Variables and Outputs
- `for_each` with Modules
- `map(object(...))`
- Inter-module dependencies
- Variable files (`.tfvars`)

## Project Structure

```text
terraform-aws-modules-project/
├── main.tf
├── providers.tf
├── variable.tf
├── myvars.tfvars
├── .gitignore
├── README.md
├── s3/
├── vpc/
└── ec2/
