
###############
# ROUTE53 ZONE
###############

resource "aws_route53_zone" "this" {
  name              = var.zone.name
  comment           = var.zone.comment
  delegation_set_id = var.zone.delegation_set_id

  dynamic "vpc" {
    for_each = var.zone.vpc != null ? [var.zone.vpc] : []

    content {
      vpc_id     = vpc.value.id
      vpc_region = vpc.value.region
    }
  }


  tags = var.tags
}

##################
# ROUTE53 RECORDS
##################

module "records" {
  source  = "terraform-aws-modules/route53/aws//modules/records"
  version = "2.11.1"

  zone_name = var.zone.name
  records   = var.records

  depends_on = [
    resource.aws_route53_zone.this
  ]
}
