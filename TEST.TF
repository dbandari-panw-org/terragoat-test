resource "aws_iam_policy" "wildcard_principal" {
  name        = "bad-wildcard-policy"
  description = "This policy allows any principal to assume a role."
 
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = "sts:AssumeRole",
        Principal = "*"
      }
    ]
  })
}
