# Region
output "aws_region" {
  value = var.aws_region
}

# VPC
output "vpc_name" {
  value = var.vpc_name
}

output "vpc_id" {
  value = aws_vpc.main.id
}

# Availability Zones
output "availability_zones" {
  description = "list of Availability zones in VPC"
  value = var.availability_zones
}

# Public Subnets
output "public_subnets" {
  description = "List of public subnets in VPC"
  value = aws_subnet.public.*.id
}

# private Subnets
//output "private_subnets" {
//  description = "List of private subnets in VPC"
//  value = aws_subnet.private.*.id
//}

# ALB domain name
output "alb_domain_name" {
  value = aws_lb.ex_alb.dns_name
}

# EC2 instance id
output "ec2_web_instance_id" {
  value = aws_instance.web.*.id
}

# EC2 instance Public ip
output "ec2_web_public_ip" {
  value = aws_instance.web.*.public_ip
}

output "ec2_ansible_public_ip" {
  value = aws_instance.ansible.public_ip
}