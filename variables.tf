variable "zone" {
  description = "Map of Route53 Zone parameters"
  type = object({
    name              = string
    comment           = optional(string)
    delegation_set_id = optional(string)
    vpc = optional(object({
      id     = string
      region = optional(string)
    }))
  })
}

variable "records" {
  description = "List of Route53 records to be created"
  type        = any
}

variable "tags" {
  description = "Map of resource tags"
  type        = map(any)
}
