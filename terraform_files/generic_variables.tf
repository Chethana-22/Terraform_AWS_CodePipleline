variable "aws_region" {
  description = "AWS Region"
  type = string
  default = "us-east-1"
}

variable "environment" {
    description = "Environment variable"
    type = string
    default = "dev"
}

variable "business_division" {
  description = "business division in organization"
  type = string
  default = "HR"
}