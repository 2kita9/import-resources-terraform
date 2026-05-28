resource "aws_iam_policy" "iam_policy" {
  name        = var.policy_name
  description = "Imported IAM policy"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:PutObject",
          "s3:DeleteObject"
        ]

        Resource = "*"
      }
    ]
  })

  tags = {
    Project = var.project_id
  }
}