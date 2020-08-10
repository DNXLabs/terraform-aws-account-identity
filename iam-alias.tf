resource "aws_iam_account_alias" "alias" {
  count         = var.set_account_alias ? 1 : 0
  account_alias = "${var.org_name}-${var.account_name}"
}
