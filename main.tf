module "foundry_server" {
  source = "./modules/foundryvtt"

  aws_account_id          = var.aws_account_id
  aws_automation_role_arn = var.aws_automation_role_arn
  foundry_password        = var.foundry_password
  foundry_username        = var.foundry_username
  domain_name             = var.domain_name
  ssl_certificate_arn     = var.ssl_certificate_arn
}

provider "aws" {
  region = "us-east-2"
}

output endpoint {
  value = module.foundry_server.lb_dns_name
}
