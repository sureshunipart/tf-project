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
  }