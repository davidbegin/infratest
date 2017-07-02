output "public_dns" {
  value = "${aws_instance.babys_first_ec2.public_dns}"
}
