resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = "cle_ssh_aws"

  tags = {
    Name = "vm_tp_cloud2"
  }

    connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("../cle_ssh_aws.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y git",
      "curl -fsSL https://get.docker.com -o get-docker.sh",
      "sudo sh get-docker.sh",
      "sudo usermod -aG docker ec2-user",
      "sudo systemctl start docker",
      "sudo systemctl enable docker",
      "git clone git@github.com:Ilies77/Interface_web_hello.git",
      "cd Interface_web_hello",
      "docker build -t myapp .",
      "docker run -d -p 80:80 myapp"
    ]
  }
}

resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Security group for example application"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}