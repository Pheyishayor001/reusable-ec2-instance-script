resource "aws_instance" "ec2-instance" {
  ami             = var.AMI
  instance_type   = var.instance_type
  key_name        = var.key_name
  count           = var.number_of_instance
  vpc_security_group_ids = [aws_security_group.ec2_Secure_Grp.id]

  tags = {
    Name = "Instance ${count.index + 1}"
  }

}
