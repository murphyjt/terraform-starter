# https://docs.aws.amazon.com/vpc/latest/ipam/planning-examples-ipam.html
data "aws_region" "current" {}

resource "aws_vpc_ipam" "main" {
  operating_regions {
    region_name = data.aws_region.current.name
  }
}

resource "aws_vpc_ipam_pool" "main" {
  ipam_scope_id  = aws_vpc_ipam.main.private_default_scope_id
  address_family = "ipv4"
  locale         = data.aws_region.current.name
}

resource "aws_vpc_ipam_pool_cidr" "main" {
  ipam_pool_id = aws_vpc_ipam_pool.main.id
  cidr         = "10.0.0.0/16"
}
