provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "myapp" {
  name = "myapp"
}

resource "aws_ecr_repository" "mysql835" {
  name = "mysql835"
}

resource "aws_instance" "app" {
  ami           = "ami-00beae93a2d981137"
  instance_type = "t2.micro"

  tags = {
    Name = "web-app"
  }
}

output "instance_ip" {
  value = aws_instance.app.public_ip
}
