resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_subnet" "main" {
  count = length(var.subnet_cidrs)
  
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = {
    "Name" = "${var.vpc_name}-subnet-${count.index + 1}"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = {
    "Name" = var.vpc_name
  }
}
