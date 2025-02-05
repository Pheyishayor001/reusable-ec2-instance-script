output "public_instance_ip" {
  description = "Instance public IP"
  value       = aws_instance.ec2-instance[*].public_ip

}