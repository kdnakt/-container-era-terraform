resource "aws_iam_policy" "deploy" {
  name = "deploy"
  path = "/"
  description = "ecr deploy policy"
  policy = file("aws_iam_policies/ecr_policy.json")
}

resource "aws_iam_policy" "ecs_instance_policy" {
  name = "ecs-instance-policy"
  path = "/"
  description = "ecs instance policy"
  policy = file("aws_iam_policies/ecs_instance_policy.json")
}
