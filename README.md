# Deploying Dockerized MLFLOW Application Server on AWS With Terraform

This project focuses on deploying containerized mlflow app on AWS provisioned through terraform. The architecture designed and executed is given below
![](infra.png)

This infra consists of a standalone networking stack including a VPC, Public and Private Subnets and other dependent resources. Furthermore, it includes an EC2 instance running the MLFlow application bootstrapped on it once instance is up and running. It also contains a custom security group attached with the EC2 Instance.

## Accessing the application

You will hit the EC2 instance's public IP to view the app running on it. 

- **<EC-2Public-IP:80>**

To access the app you need to put the username and password which are given below

- username: mlflow
- password: mlflow


## Deploying a fresh Terraform script on AWS

Follow the steps given below to deploy a fresh end to end infra provisioned by terraform 

## Terraform Initialization
Open the Terraform Main Folder in the VSCode and in the root directory [ which
contains other directories like modules, template etc. ] ,

type the command given below for terraform initialization:

- terraform init

# Creating Workspace

To make terraform naming convention more sopishticaed , we have followed the workspaces concept. So to create a workspace , run the command below

- terraform workspace new terraform-mlflow [**NOTE: You can give any workspace name of your choice**]

## Terraform Apply
Once terraform is initialized, run the command below to see which resources would get
deployed if terraform script runs successfully:

- terraform plan

The variable configuratiom files is **terraform.auto.tfvars** and you can change the attribute 
paramaters value over there of your own choice.  

To deploy infrastructure, run the command below in in root folder

- terraform apply

After the command starts to run, terraform will show resources being created and will
ask permission from you to build up resources.

Type -- **yes** -- and AWS infrastructure will start to build up and get deployed.

## Terraform Destroy
If you want to destroy the terraform, type the command below:

- terraform destroy

On running this, terraform will show resources being destroyed and will
ask permission from you to clean up resources.

Type -- **yes** -- and AWS infrastructure will start to clean up and resources will be destroyed.
