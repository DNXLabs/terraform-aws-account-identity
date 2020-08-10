output "iam_role_admin_arn" {
  value       = aws_iam_role.admin.arn
  description = "AdministratorAccess IAM role ARN"
}

output "iam_role_data_scientist_arn" {
  value       = aws_iam_role.data_scientist.arn
  description = "DataScientist IAM role ARN"
}

output "iam_role_database_admin_arn" {
  value       = aws_iam_role.database_admin.arn
  description = "DatabaseAdministrator IAM role ARN"
}

output "iam_role_network_admin_arn" {
  value       = aws_iam_role.network_admin.arn
  description = "NetworkAdministrator IAM role ARN"
}

output "iam_role_power_user_arn" {
  value       = aws_iam_role.power_user.arn
  description = "PowerUserAccess IAM role ARN"
}

output "iam_role_security_audit_arn" {
  value       = aws_iam_role.security_audit.arn
  description = "SecurityAudit IAM role ARN"
}

output "iam_role_support_user_arn" {
  value       = aws_iam_role.support_user.arn
  description = "SupportUser IAM role ARN"
}

output "iam_role_system_admin_arn" {
  value       = aws_iam_role.system_admin.arn
  description = "SystemAdministrator IAM role ARN"
}

output "iam_role_view_only_arn" {
  value       = aws_iam_role.view_only.arn
  description = "ViewOnlyAccess IAM role ARN"
}

output "iam_role_extra_arns" {
  value = aws_iam_role.extra.*.arn
}
