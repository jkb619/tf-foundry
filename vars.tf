variable aws_account_id {
  default = "373055206579"
  description = "Must populate this variable to use the module. Check the module release page for full variable description."
}

variable aws_automation_role_arn {
  default = "arn:aws:iam::373055206579:role/foundryvtt-kms-role"
  description = "Must populate this variable to use the module. Check the module release page for full variable description."
}

variable foundry_password {
  default = "Wp1u8Y4Efgs4"
  description = "Must populate this variable to use the module. Check the module release page for full variable description."
}

variable foundry_username {
  default = "tulta-munille"
  description = "Must populate this variable to use the module. Check the module release page for full variable description."
}

variable ssl_certificate_arn {
  default = "arn:aws:acm:us-east-2:373055206579:certificate/6c8e2d05-9176-4a21-89c8-167c94151c7f"
  description = "arn of the existing ssl certificate"
}

variable domain_name {
  default = "tulta-munille.com"
  description = "domain name to prefix with 'cloud-foundry'"
}

variable foundry_admin_key {
  default = "Shirak#0"
  description = "password to log into foundry UI of the vtt"
}