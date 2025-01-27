data "aes_ami" "amilinux2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }

  filter {
    name = "root-device-type"
    value = ["ebs"]
  }

  filter {
    name = "virtualization-type"
    value = ["hvm"]
  }
  filter {
    name = "architecture"
    value = ["x86_64"]
  }
}