provider aws {
    region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0281e3f1612a178c5"
  instance_type = var.instance_type
  user_data = file("apache.sh")

  tags = {
    Name = var.instance_name
  }  
}