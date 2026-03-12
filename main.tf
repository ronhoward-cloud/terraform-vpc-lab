provider "aws" {
  region = "us-east-1"
}

# Create IAM user with limited access
resource "aws_iam_user" "dev_user" {
  name = "dev-readonly-user"
}

# Create IAM policy - read only access to S3
resource "aws_iam_policy" "s3_readonly" {
  name        = "s3-readonly-policy"
  description = "Allow read-only access to S3"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "s3:GetObject",
          "s3:ListBucket"
        ]
        Resource = "*"
      }
    ]
  })
}

# Attach policy to user
resource "aws_iam_user_policy_attachment" "attach" {
  user       = aws_iam_user.dev_user.name
  policy_arn = aws_iam_policy.s3_readonly.arn
}