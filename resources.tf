resource "aws_iam_policy" "iam_policy" {
  name        = var.policy_name
  description = "Custom role with limited permissions"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "ec2:*",
          "s3:*"
        ]

        Resource = "*"
      }
    ]
  })
}