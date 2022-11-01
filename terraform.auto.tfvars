settings = {
  AWS_REGION          = "us-east-1"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr = ["10.0.3.0/24", "10.0.4.0/24"]
  ec2_ami             = "ami-09d3b3274b6c5d4aa"
  ec2_instance_type   = "t2.micro"
  keypair             = "mlflow-n_virginia-key"
}
