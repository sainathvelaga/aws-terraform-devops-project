resource "aws_instance" "this" {
  ami           = "ami-0c02fb55956c7d316"  # us-east-1 Amazon Linux
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id

  tags = {
    Name = "${var.project_name}-ec2"
  }
}