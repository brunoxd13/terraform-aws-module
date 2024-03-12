module "route53" {
  source = "../"

  zone = {
    name    = "brl-tech-test.com"
    comment = "Gerenciado pelo mod. terraform"
    # delegation_set_id = ""
    # vpc = {
    #   id     = ""
    #   region = ""
    # }
  }

  records = [
    {
      name    = "test"
      type    = "CNAME"
      ttl     = 3600
      records = ["brl-tech-test.com"]
    }
  ]

  tags = {
    evironment = "dev"
  }
}
