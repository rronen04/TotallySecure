resource "alicloud_ram_account_password_policy" "corporate1" {
  require_lowercase_characters = false
  require_uppercase_characters = false
  require_numbers              = false
  require_symbols              = false
  hard_expiry                  = true
  password_reuse_prevention    = 5
  max_login_attempts           = 3
}

resource "alicloud_ram_account_password_policy" "corporate2" {
  minimum_password_length = 14
  require_lowercase_characters = false
  require_uppercase_characters = false
  require_numbers              = false
  require_symbols              = false
  hard_expiry                  = true
  password_reuse_prevention    = 5
  max_login_attempts           = 3
}

module "ec2_security_group" {
  source = "git::ssh://git@github.com/Ban-XXX/plataforma-ec2SecurityGroup-aws-iac-terraform.git?ref=main"

  # module input 111
}

variable "owner_email" {
  type    = string
  default = "ronen.test@example.com"
}
