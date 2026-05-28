output "policy_arn" {
  description = "IAM policy ARN"
  value       = aws_iam_policy.iam_policy.arn
}