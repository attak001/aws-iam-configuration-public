
module "setpolicies" {
  source            = "./modules"
  aws_account_id    = "1111111111111"
  aws_account_alias = "accountalias" # to be able to login using https://accountalias.signin.aws.amazon.com/console instead of the account number
  aws_role          = "default"

  # set password policy related configuration  (increase)

  minimum_password_length        = "25"    # Minimum length to require for user passwords Default set to 14
  require_lowercase_characters   = "true"  # Whether to require lowercase characters for user passwords. Default set to true
  require_numbers                = "true"  # Whether to require numbers for user passwords.  Default set to true
  require_uppercase_characters   = "true"  # Whether to require uppercase characters for user passwords. Default set to true
  require_symbols                = "true"  # Whether to require symbols for user passwords. Default set to true
  allow_users_to_change_password = "true"  # Whether to allow users to change their own password Default set to true
  hard_expiry                    = "false" # Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset) Default set to false
  max_password_age               = "35"    #The number of days that an user password is valid. Default set to 35 days
  password_reuse_prevention      = "24"    #The number of previous passwords that users are prevented from reusing. Default is set to 24

  #settings contact details  # update contact details as necessary

  opsname  = "Operations Dept"
  opsemail = "opsemail@companyaddress.com" # use distribution groups ideally
  opsphone = "+11234678"
  opstitle = "Operations manager"

  billingname  = "Billing Dept"
  billingemail = "billingemail@companyaddress.com" # use distribution groups ideally
  billingphone = "+11234678"
  billingtitle = "Finance"

  securityname  = "Security Dept"
  securityemail = "securityemail@companyaddress.com" # use distribution groups ideally
  securitytitle = "Ciso"
  securityphone = "+112345678"

}