module "VPC" {
  source        = "./modules/vpc"
  main_settings = var.settings
}

module "SG" {
  source = "./modules/sg"
  vpc_id = module.VPC.vpc_output.vpc_id
}

module "ec2" {
  source        = "./modules/ec2"
  main_settings = var.settings
  vpc_details   = module.VPC.vpc_output.public_subnet[0].id
  sg_details    = module.SG.sg_output
}