terraform {
  backend "s3" {
    bucket         = "ronhoward-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
module "vpc" {
  source = "../../modules/vpc"

  region              = var.region
  az                  = var.az
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}