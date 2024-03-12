output "zone_id" {
  description = "The Route53 Zone ID"
  value       = resource.aws_route53_zone.this.zone_id
}

output "name_servers" {
  description = "The Route53 Zone NS"
  value       = resource.aws_route53_zone.this.name_servers
}

output "recrods" {
  description = "The Route53 Zone records"
  value       = module.records.route53_record_name
}
