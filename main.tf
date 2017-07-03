provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "babys_first_ec2" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.ssh_access.id}"]

  tags {
    Name = "terraform-kitchentest"
  }
}

resource "aws_security_group" "ssh_access" {
  name = "ssh-access"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


