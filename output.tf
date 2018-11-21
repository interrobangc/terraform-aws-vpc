output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = ["${module.vpc.public_subnets}"]
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = ["${module.vpc.private_subnets}"]
}

output "database_subnets" {
  description = "List of IDs of database subnets"
  value       = ["${module.vpc.database_subnets}"]
}

output "database_subnet_group" {
  description = "ID of database subnet group"
  value       = "${module.vpc.database_subnet_group}"
}

output "id" {
  description = "VPC id"
  value       = "${module.vpc.vpc_id}"
}

output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = ["${module.vpc.public_route_table_ids}"]
}

output "private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = ["${module.vpc.private_route_table_ids}"]
}

output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = ["${module.vpc.vpc_main_route_table_id}"]
}

output "natgw_ids" {
  description = "List of NAT Gateway IDs"
  value       = ["${module.vpc.natgw_ids}"]
}
