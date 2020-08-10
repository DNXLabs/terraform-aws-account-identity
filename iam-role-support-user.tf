resource "aws_iam_role" "support_user" {
  name                 = "SupportUser"
  assume_role_policy   = data.aws_iam_policy_document.assume_role_saml.json
  max_session_duration = var.role_max_session_duration
}

resource "aws_iam_role_policy_attachment" "support_user" {
  role       = aws_iam_role.support_user.name
  policy_arn = "arn:aws:iam::aws:policy/job-function/SupportUser"
}
