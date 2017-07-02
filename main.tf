provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "babys_first_ec2" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"

  tags {
    Name = "terraform-kitchentest"
  }
}
