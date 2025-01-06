resource "aws_instance" "ec2_instance" {
  ami                         = data.aws_ami.jenkins_ami.id
  instance_type               = var.ec2_instance_type
  availability_zone           = var.subnet_availability_zone
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.security_groups.id]
  associate_public_ip_address = false
  tags = {
    Name = var.ec2_instance_name
  }
}
resource "aws_eip_association" "eip_attach" {
  instance_id   = aws_instance.ec2_instance.id
  allocation_id = var.elasticip_allocation_id
}