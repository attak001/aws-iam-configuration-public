# iam-configuration-public
IAM best practises in AWS and the necessary code in terraform 


Account id related information

The AWS account ID is a unique 12-digit number identification and a friendly alias can be used to remember the account id when logging in to AWS

For example myawsaccountsamplealias instead of 123456789012

https://123456789012.signin.aws.amazon.com/console  USE  https://myawsaccountsamplealias.sigin.aws.amazon.com/console


Setting up password policies for your users

# set password policy related configuration   (refer to https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_account-policy.html)

  minimum_password_length        = "25"    # Minimum length to require for user passwords Default set to 14
  require_lowercase_characters   = "true"  # Whether to require lowercase characters for user passwords. Default set to true
  require_numbers                = "true"  # Whether to require numbers for user passwords.  Default set to true
  require_uppercase_characters   = "true"  # Whether to require uppercase characters for user passwords. Default set to true
  require_symbols                = "true"  # Whether to require symbols for user passwords. Default set to true
  allow_users_to_change_password = "true"  # Whether to allow users to change their own password Default set to true
  hard_expiry                    = "false" # Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset) Default set to false
  max_password_age               = "35"    #The number of days that an user password is valid. Default set to 35 days  
