provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAYTOW2BOC3WVSISOM"
  secret_key = "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"
}

resource "aws_iam_policy" "policy" {
  name        = "boundary_iam_policy"
  path        = "/"
  description = "My permissions boundary test "

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Deny",
            "Action": [
                "iam:UpdateAssumeRolePolicy",
                "iam:DeleteGroup",
                "iam:PutRolePermissionsBoundary",
                "iam:DeletePolicy",
                "iam:CreateRole",
                "iam:AttachRolePolicy",
                "iam:PutRolePolicy",
                "iam:DeleteRolePermissionsBoundary",
                "iam:CreateUser",
                "iam:PassRole",
                "iam:DetachRolePolicy",
                "iam:DeleteRolePolicy",
                "iam:DetachGroupPolicy",
                "iam:DetachUserPolicy",
                "iam:CreatePolicyVersion",
                "iam:PutGroupPolicy",
                "iam:DeleteAccountPasswordPolicy",
                "iam:UpdateUser",
                "iam:PutUserPermissionsBoundary",
                "iam:DeleteUserPolicy",
                "iam:AttachUserPolicy",
                "iam:DeleteRole",
                "iam:DeleteUser",
                "iam:DeleteUserPermissionsBoundary",
                "iam:CreatePolicy",
                "iam:AttachGroupPolicy",
                "iam:PutUserPolicy",
                "iam:DeleteGroupPolicy",
                "iam:DeletePolicyVersion",
                "iam:SetDefaultPolicyVersion"
            ],
            "Resource": "*"
    }
  ]
}
EOF
}
