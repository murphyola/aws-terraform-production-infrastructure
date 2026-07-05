output "instance_public_ip" {
  value = aws_eip.web.public_ip
}

output "instance_public_dns" {
  value = aws_instance.web.public_dns
}

output "instance_id" {
  value = aws_instance.web.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}
