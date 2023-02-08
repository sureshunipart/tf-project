locals {
  tags = {
    Project     = var.project
    createdby   = var.createdby
    CreatedOn   = timestamp()
    Environment = terraform.workspace
  }
}

module "ec2" {
  source = "../modules/unipart-test"
  }

module "ec2" {
  source = "../modules/unipart-test"
  #source = "git::https://github.com/e2eSolutionArchitect/terraform.git//providers/aws/modules/e2esa-module-aws-ec2?ref=main"
  #for_each          = toset(var.ec2_names) # toset(["ec21","ec22"])
  #count             = var.loop_cnt
  #ami               = var.ami
  #availability_zone = var.availability_zone
  }