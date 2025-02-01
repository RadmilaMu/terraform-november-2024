module "novembe-2024r" {
  source  = "RadmilaMu/novembe-2024r/module"
  version = "2.0.0"
  region = "us-east-1"
  vpc_cidr = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
}