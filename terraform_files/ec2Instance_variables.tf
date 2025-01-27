variable "instance_type" {
  description = "EC2 Instance type"
  type = string
  default = "t2.micro"
}

variable "instance_keypair" {
  description = "EC2 Key pair"
  type = string
  default = "terraform-key"
}

variable "private_instance_count" {
  description = "EC2 Private instances count"
  type = number
  default = 1
}