output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.web.public_ip
}

output "public_dns" {
  description = "Public DNS of EC2 instance"
  value       = aws_instance.web.public_dns
}

output "private_ip" {
  description = "Private IP of EC2 instance"
  value       = aws_instance.web.private_ip
}

output "security_group_id" {
  description = "Security group ID attached to EC2"
  value       = aws_security_group.ec2_sg.id
}