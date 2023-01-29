variable "aws_region" {
  description = "Determine AWS region used"
  type        = string
  default     = "eu-central-1"
}

variable "aws_account_id" {
  description = "AWS IAM account id for this account"
  type        = string

}

variable "aws_account_alias" {
  description = "AWS IAM account alias for this account"
  type        = string
}


variable "profile" {
  description = "Determine AWS profile in aws cli"
  type        = string
  default     = "default"
}

variable "role" {
  description = "Determine AWS role in aws cli"
  type        = string
  default     = "default"
}



# variables related to password policies

variable "create_account_password_policy" {
  description = "Whether to create AWS IAM account password policy"
  type        = bool
  default     = true
}


variable "aws_role" {
  description = "Determine AWS role used to run this code"
  type        = string

}

variable "max_password_age" {
  description = "The number of days that an user password is considered valid."
  type        = number
  default     = "35"
}

variable "minimum_password_length" {
  description = "Minimum length to require for user passwords"
  type        = number
  default     = "14"
}

variable "password_reuse_prevention" {
  description = "The number of previous passwords that users are prevented from reusing"
  type        = number
  default     = "24"
}


variable "require_lowercase_characters" {
  description = "Whether to require lowercase characters for user passwords"
  type        = bool
  default     = "true"
}

variable "require_numbers" {
  description = "Whether to require numbers for user passwords"
  type        = bool
  default     = "true"
}

variable "require_uppercase_characters" {
  description = "Whether to require uppercase characters for user passwords"
  type        = bool
  default     = "true"
}


variable "require_symbols" {
  description = "Whether to require symbols for user passwords"
  type        = bool
  default     = "true"
}

variable "allow_users_to_change_password" {
  description = "Whether to allow users to change their own password"
  type        = bool
  default     = "true"
}


variable "hard_expiry" {
  description = "Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset)"
  type        = bool
  default     = "false"
}


# variables related to alternate contacts


variable "billingname" {
  description = "Person's name responsible for billing"
  type        = string
  default     = ""
}

variable "billingtitle" {
  description = "Person's title responsible for billing"
  type        = string
  default     = ""
}

variable "billingemail" {
  description = "Person's email responsible for billing"
  type        = string
  default     = "" # Use email distribution lists for the account contacts
}


variable "billingphone" {
  description = "Person's phone number responsible for billing"
  type        = string
  default     = ""
}


variable "securityname" {
  description = "Person's name responsible for security"
  type        = string
  default     = ""
}

variable "securitytitle" {
  description = "Person's title responsible for security"
  type        = string
  default     = ""
}

variable "securityemail" {
  description = "Person's email responsible for security"
  type        = string
  default     = "" # Use email distribution lists for the account contacts
}


variable "securityphone" {
  description = "Person's phone number responsible for security"
  type        = string
  default     = ""
}




variable "opsname" {
  description = "Person's name responsible for Operations"
  type        = string
  default     = ""
}

variable "opstitle" {
  description = "Person's title responsible for Operations"
  type        = string
  default     = ""
}

variable "opsemail" {
  description = "Person's email responsible for Operations"
  type        = string
  default     = "" # Use email distribution lists for the account contacts
}


variable "opsphone" {
  description = "Person's phone number responsible for Operations"
  type        = string
  default     = ""
}

# roles related variables

variable "create_role" {
  description = "Whether to create a role"
  type        = bool
  default     = true
}


variable "max_session_duration" {
  type        = number
  default     = 3600
  description = "The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
}

variable "permissions_boundary" {
  type        = string
  default     = ""
  description = "The ARN of the policy that is used to set the permissions boundary for the role."
  sensitive   = true
}
