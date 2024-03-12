output "zone_id" {
  description = "The Route53 Zone ID"
  value       = module.route53.zone_id
}

output "name_servers" {
  description = "The Route53 Zone NS"
  value       = module.route53.name_servers
}

