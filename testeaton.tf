resource "aws_kms_key" "bad_logging_key" {
  description = "KMS key with insecure policy for logging"
  
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid: "AllowRootAccess",
        Effect: "Allow",
        Principal: {
          AWS: "*"
        },
        Action: "kms:*",
        Resource: "*"
      }
    ]
  })
}
