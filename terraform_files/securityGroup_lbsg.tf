module "loadbalancer_sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name = "${local.name}-loadbalancer-sg"
  description = "Security Group for Load Balancer"
  vpc_id = module.vpc.vpc_id

  ingress_rules = ["http-80-tcp", "https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]
  tags = local.common_tags

  ingress_with_cidr_blocks = [
    {
        from_port   = 80
        to_port     = 80
        protocol    = 6
        cidr_blocks = "0.0.0.0/0"
        description = "Allow 81 port from internet"
    }
  ]
}