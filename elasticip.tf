resource "aws_eip" "web" {
  domain = "vpc"

  instance = aws_instance.web.id

  tags = {
    Name        = "production-eip"
    Environment = "Production"
    Project     = "aws-terraform-production-infrastructure"
    ManagedBy   = "Terraform"
  }
}
