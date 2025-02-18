resource "aws_iam_openid_connect_provider" "this" {
  client_id_list = var.client_id_list
  url = var.url
  thumbprint_list = var.thumbprint_list
  
}

resource "aws_iam_role" "this" {
  name = var.role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRoleWithWebIdentity",
        Effect = "Allow",
        Sid    = "WebIdentity",
        Principal = {
          Federated = "arn:aws:iam::438465154544:oidc-provider/token.actions.githubusercontent.com"
        },
        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
          }
          StringLike = {
            "token.actions.githubusercontent.com:sub" = "repo:jacklavelle286/*"
          }
        }
      }
    ]
  })
}



resource "aws_iam_policy" "this" {
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}


resource "aws_iam_role_policy_attachment" "this" {
  role = aws_iam_role.this.name
  policy_arn = aws_iam_policy.policy.arn
}


data "aws_iam_policy_document" "policy" {
  statement {
    effect    = "Allow"
    actions   = ["*"]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "policy" {
  name        = "test-policy"
  description = "A test policy"
  policy      = data.aws_iam_policy_document.policy.json
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.this.name
  policy_arn = aws_iam_policy.policy.arn
}