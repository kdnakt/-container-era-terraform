resource "aws_iam_policy" "deploy" {
  name = "deploy"
  path = "/"
  description = "ecr deploy policy"
  policy = file("aws_iam_policies/ecr_policy.json")
}

