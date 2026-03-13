

# AWS Cloud Infrastructure Portfolio
**Ron Howard II** | AWS Certified CloudOps Engineer | Terraform Specialist

This repository contains 5 hands-on AWS infrastructure projects built 
with Terraform, demonstrating real-world cloud engineering skills.

---

## Project 1: Modular VPC Architecture
**Skills:** Terraform modules, AWS networking, subnetting

Built a production-ready VPC on AWS using reusable Terraform modules.

- Public and private subnets across availability zones
- Internet Gateway, NAT Gateway, and route table associations
- Security groups with least-privilege inbound/outbound rules
- EC2 instance deployed for validation

---

## Project 2: Remote State Backend
**Skills:** Terraform state management, S3, DynamoDB

Configured secure remote state storage for team-safe deployments.

- S3 bucket with versioning and encryption for state storage
- DynamoDB table for state locking to prevent conflicts
- Follows production best practices for collaborative Terraform workflows

---

## Project 3: EC2 SSH Troubleshooting Lab
**Skills:** AWS EC2, security groups, debugging

Diagnosed and resolved a real-world EC2 SSH connectivity failure.

- Identified missing inbound rule on security group as root cause
- Applied fix via Terraform and verified SSH access
- Documented troubleshooting methodology

---

## Project 4: IAM Hardening Lab
**Skills:** AWS IAM, least-privilege access, security

Implemented least-privilege IAM access control using Terraform.

- Created IAM user with custom S3 read-only policy
- Enforced principle of least privilege
- Validated permissions in AWS Console before teardown

---

## Project 5: CI/CD Pipeline with GitHub Actions
**Skills:** GitHub Actions, CI/CD, automation, Terraform

Built an automated infrastructure deployment pipeline.

- Pipeline triggers on every push to main branch
- Runs terraform init, plan, and apply automatically
- AWS credentials managed securely via GitHub Secrets
- Demonstrates DevOps automation for infrastructure deployments

---

## Certifications
- AWS Certified CloudOps Engineer
- AWS Certified Solutions Architect - Associate
- AWS Certified Cloud Practitioner

## Tech Stack
AWS | Terraform | GitHub Actions | EC2 | VPC | S3 | IAM | DynamoDB
