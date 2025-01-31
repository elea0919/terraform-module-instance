provider aws {
    region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-07eef52105e8a2059"
  instance_type = var.instance_type
  user_data = file("apache.sh")

  tags = {
    Name = var.instance_name
  }  
}