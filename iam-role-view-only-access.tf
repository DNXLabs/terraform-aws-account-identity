resource "aws_iam_role" "view_only" {
  name                 = "ViewOnlyAccess"
  assume_role_policy   = data.aws_iam_policy_document.assume_role_saml.json
  max_session_duration = var.role_max_session_duration
}

resource "aws_iam_role_policy_attachment" "view_only" {
  role       = aws_iam_role.view_only.name
  policy_arn = "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"
}
