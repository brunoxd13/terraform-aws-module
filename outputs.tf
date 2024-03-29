output "zone_id" {
  description = "The Route53 zone ID"
  value       = resource.aws_route53_zone.this.zone_id
}

output "name_servers" {
  description = "The Route53 zone NS"
  value       = resource.aws_route53_zone.this.name_servers
}

output "recrods" {
  description = "The Route53 zone records"
  value       = module.records.route53_record_name
}
