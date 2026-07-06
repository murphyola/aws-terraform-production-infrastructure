# AWS Terraform Production Infrastructure

## Overview

This project demonstrates how to provision a production-ready AWS infrastructure using **Terraform**. The infrastructure is created entirely through Infrastructure as Code (IaC), making it repeatable, scalable, and version-controlled.

The project automatically provisions networking resources, launches an EC2 instance, associates an Elastic IP, and bootstraps the server by installing and starting Nginx using cloud-init (`user_data`).

---

## Project Objectives

* Provision AWS infrastructure using Terraform
* Create a custom VPC
* Create a public subnet
* Configure an Internet Gateway
* Configure Route Tables
* Create a Security Group
* Launch an EC2 Ubuntu instance
* Allocate and associate an Elastic IP
* Automatically install and configure Nginx during instance creation

---

## Technologies Used

* Terraform
* AWS EC2
* AWS VPC
* AWS Internet Gateway
* AWS Route Tables
* AWS Security Groups
* Elastic IP
* Ubuntu Server 24.04 LTS
* Cloud-init (`user_data`)

---

## Architecture

```text
                   Internet
                       │
               Internet Gateway
                       │
               Public Route Table
                       │
               Public Subnet
                       │
            Security Group (SSH, HTTP)
                       │
                 EC2 Ubuntu Server
                       │
                Nginx Web Server
                       │
                 Elastic IP Address
```

---

## Project Structure

```text
aws-terraform-production-infrastructure/
│
├── provider.tf
├── versions.tf
├── variables.tf
├── network.tf
├── security.tf
├── ec2.tf
├── elasticip.tf
├── outputs.tf
├── terraform-key.pub
├── .gitignore
├── README.md
└── screenshots/
```

---

## Resources Created

The project provisions the following AWS resources:

* VPC
* Public Subnet
* Internet Gateway
* Route Table
* Route Table Association
* Security Group
* EC2 Instance
* Elastic IP
* SSH Key Pair

---

## Prerequisites

Before deploying, install:

* Terraform
* AWS CLI
* Git

Configure AWS credentials:

```bash
aws configure
```

---

## Deployment

Clone the repository:

```bash
git clone https://github.com/<your-github-username>/aws-terraform-production-infrastructure.git

cd aws-terraform-production-infrastructure
```

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

Review the execution plan:

```bash
terraform plan
```

Provision the infrastructure:

```bash
terraform apply
```

Destroy the infrastructure when finished:

```bash
terraform destroy
```

---

## Outputs

After deployment, Terraform displays:

* VPC ID
* EC2 Instance ID
* Public IP Address
* Public DNS

Example:

```text
instance_public_ip = 51.xxx.xxx.xxx
instance_public_dns = ec2-xx-xx-xx-xx.eu-north-1.compute.amazonaws.com
vpc_id = vpc-xxxxxxxx
```

---

## Automatic Server Configuration

The EC2 instance is automatically configured during launch using **cloud-init (`user_data`)**.

The bootstrap process:

* Updates Ubuntu packages
* Installs Nginx
* Enables the Nginx service
* Starts the Nginx web server

Once deployment completes, the web server is immediately available via the Elastic IP.

---

## Screenshots

Add screenshots of the following:

* AWS VPC
* Public Subnet
* Internet Gateway
* Route Table
* Security Group
* EC2 Instance
* Elastic IP
* Successful Terraform Apply
* Nginx Welcome Page

Example:

```text
screenshots/
├── terraform-apply.png
├── aws-vpc.png
├── subnet.png
├── security-group.png
├── ec2-instance.png
├── elastic-ip.png
└── nginx-homepage.png
```

---

## Skills Demonstrated

* Infrastructure as Code (IaC)
* AWS Networking
* Terraform
* Cloud Infrastructure Automation
* Linux Administration
* EC2 Management
* Elastic IP Management
* Cloud-init Bootstrapping
* Production Infrastructure Provisioning

---

## Future Improvements

* Remote Terraform State (S3)
* DynamoDB State Locking
* Multiple Availability Zones
* Auto Scaling Group
* Application Load Balancer
* HTTPS with ACM
* Route 53 DNS
* CI/CD with GitHub Actions
* Terraform Modules
* Ansible Integration

---

## Author

**Maruf Salaudeen**

DevOps Engineer

**GitHub:** https://github.com/murphyola

---

## License

This project is provided for educational and portfolio purposes.

