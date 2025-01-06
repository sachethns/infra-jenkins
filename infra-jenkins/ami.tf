data "aws_ami" "jenkins_ami" {
  most_recent = true
  filter {
    name   = "name"
    values = [var.jenkins_ami_prefix]
  }
}