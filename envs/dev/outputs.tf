output "vpc_id"               { value = module.vpc.vpc_id }
output "public_subnet_id"     { value = module.vpc.public_subnet_id }
output "private_subnet_id"    { value = module.vpc.private_subnet_id }
output "internet_gateway_id"  { value = module.vpc.internet_gateway_id }
output "nat_gateway_id"       { value = module.vpc.nat_gateway_id }
output "public_route_table_id"  { value = module.vpc.public_route_table_id }
output "private_route_table_id" { value = module.vpc.private_route_table_id }

module "vpc" {
  source = "../../modules/vpc"

  region              = "us-east-1"
  az                  = "us-east-1a"
  vpc_cidr            = "10.10.0.0/16"
  public_subnet_cidr  = "10.10.1.0/24"
  private_subnet_cidr = "10.10.2.0/24"
}

output "vpc_id"                 { value = module.vpc.vpc_id }
output "public_subnet_id"       { value = module.vpc.public_subnet_id }
output "private_subnet_id"      { value = module.vpc.private_subnet_id }
output "internet_gateway_id"    { value = module.vpc.internet_gateway_id }
output "nat_gateway_id"         { value = module.vpc.nat_gateway_id }
output "public_route_table_id"  { value = module.vpc.public_route_table_id }
output "private_route_table_id" { value = module.vpc.private_route_table_id }