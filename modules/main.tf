terraform {
  required_providers {
    aws = ">= 4.0,<=5.0"
  }
}

provider "aws" {
  alias   = "module"
  region  = var.aws_region
  profile = var.profile

}


# setup IAM account alias
resource "aws_iam_account_alias" "accountalias" {
  account_alias = var.aws_account_alias
}


# used to setup an AWS local password policy

resource "aws_iam_account_password_policy" "passpolicy" {
  count                          = var.create_account_password_policy ? 1 : 0
  provider                       = aws.module
  minimum_password_length        = var.minimum_password_length        # Minimum length to require for user passwords Default set to 14
  require_lowercase_characters   = var.require_lowercase_characters   # Whether to require lowercase characters for user passwords. Default set to true
  require_numbers                = var.require_numbers                # Whether to require numbers for user passwords.  Default set to true
  require_uppercase_characters   = var.require_uppercase_characters   # Whether to require uppercase characters for user passwords. Default set to true
  require_symbols                = var.require_symbols                # Whether to require symbols for user passwords. Default set to true
  allow_users_to_change_password = var.allow_users_to_change_password # Whether to allow users to change their own password Default set to true
  hard_expiry                    = var.hard_expiry                    # Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset) Default set to false
  max_password_age               = var.max_password_age               # The number of days that an user password is valid. Default set to 35 days
}

# used to setup an AWS account alternate_contact

resource "aws_account_alternate_contact" "operations" {
  provider               = aws.module
  alternate_contact_type = "OPERATIONS"
  name                   = var.opsname
  title                  = var.opstitle
  email_address          = var.opsemail
  phone_number           = var.opsphone
}

resource "aws_account_alternate_contact" "security" {
  provider               = aws.module
  alternate_contact_type = "SECURITY"
  name                   = var.securityname
  title                  = var.securitytitle
  email_address          = var.securityemail
  phone_number           = var.securityphone
}

resource "aws_account_alternate_contact" "BILLING" {
  provider               = aws.module
  alternate_contact_type = "BILLING"
  name                   = var.billingname
  title                  = var.billingtitle
  email_address          = var.billingemail
  phone_number           = var.billingphone
}

