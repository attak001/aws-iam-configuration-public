# iam-configuration-public
IAM best practises in AWS and the necessary code in terraform 


Account id related information

The AWS account ID is a unique 12-digit number identification and a friendly alias can be used to remember the account id when logging in to AWS

For example myawsaccountsamplealias instead of 123456789012

https://123456789012.signin.aws.amazon.com/console  USE  https://myawsaccountsamplealias.sigin.aws.amazon.com/console


Setting up password policies for your users

# set password policy related configuration.   Please refer to https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_account-policy.html for more details


*	Set minimum_password_length to 25.  The default in the module is set to 14. Change the minimum_password_length if needed (range is between 6-128)
	
*	Set the requirment to have lowercase characters. The default in the module is set to true  

*	Set the requirment to have numbers. The default in the module is set to true     
	
*	Set the requirment to have uppercase characters. The default in the module is set to true 
	
*	Set the requirment to have symbols. The default in the module is set to true      
	
*	Set the requirment to allow users to change password.  The default in the module is set to true      
	
*	Set the requirment whether users are prevented from setting a new password after their password has expired  and requires administrator reset. The default in 	the module is set to false
	
*	Set the password to expiry after 35 days. The default in the module is set to 35. Range is between 1-1095 days










  
