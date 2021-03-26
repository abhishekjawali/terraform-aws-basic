output "vpc_id" {
  value = module.demo_vpc.vpc_id
}

output "public_subnet_id" {
  value = module.demo_vpc.public_subnets
}

output "private_subnet_id" {
  value = module.demo_vpc.private_subnets
}
