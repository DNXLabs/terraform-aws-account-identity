resource "aws_iam_role" "power_user" {
  count                = var.create_default_roles ? 1 : 0
  name                 = "PowerUserAccess"
  assume_role_policy   = data.aws_iam_policy_document.assume_role_saml.json
  max_session_duration = var.role_max_session_duration
}

resource "aws_iam_role_policy_attachment" "power_user" {
  count      = var.create_default_roles ? 1 : 0
  role       = aws_iam_role.power_user[0].name
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
}
