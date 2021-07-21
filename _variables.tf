variable "account_name" {
  description = "Account name (slug)"
}

variable "org_name" {
  description = "Name for this organization (slug)"
}

variable "set_account_alias" {
  description = "Whether to set or not IAM account alias"
  default     = true
}

variable "role_max_session_duration" {
  description = "Maximum CLI/API session duration"
  default     = "43200"
}

variable "extra_roles" {
  default     = []
  description = "A list of extra roles to create in this account"
}

variable "extra_roles_policy_arn" {
  default     = {}
  description = "A map of { <role_name> = <policy arn> } to attach policies to extra roles in this account (role must be declared at extra_roles first)"
}

variable "extra_roles_policy" {
  default     = {}
  description = "A map of { <role_name> = <json policy> } to create policies to extra roles in this account (role must be declared at extra_roles first)"
}

variable "saml_provider_name" {
  description = "SAML Provider name to trust the roles created (pass either name or ARN)"
  default     = ""
}

variable "saml_provider_arn" {
  description = "SAML Provider ARN to trust the roles created (pass either a name or ARN)"
  default     = ""
}

variable "enable_iam_password_policy" {
  description = "Enable IAM passoword policy"
  default     = false
}

variable "iam_password_policy_max_password_age" {
  default = 90
}

variable "iam_password_policy_password_reuse_prevention" {
  default = 12
}

variable "create_default_roles" {
  description = "Create default roles in the account"
  default     = true
}



locals {
  saml_provider_arn = var.saml_provider_name != "" ? "arn:aws:iam::${data.aws_caller_identity.current.account_id}:saml-provider/${var.saml_provider_name}" : var.saml_provider_arn
}
