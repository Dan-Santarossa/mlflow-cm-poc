output "output_data" {
  value = {
    MLFlow_EC2_IP    = module.ec2.ec2_output.public_ip
    MLFlow_EC2_ID    = module.ec2.ec2_output.ec2_id
    vpc_id           = module.VPC.vpc_output.vpc_id
    public_subnet_id = module.VPC.vpc_output.public_subnet.*.id
  }
}