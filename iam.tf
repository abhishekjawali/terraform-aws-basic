//--------------------------------------------------------------------
// Resources


resource "aws_iam_instance_profile" "demo_server" {
  name = "${var.environment_name}-demo-server-instance-profile"
  role = aws_iam_role.demo_server.name
}

resource "aws_iam_role" "demo_server" {
  name               = "${var.environment_name}-demo-server-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_role_policy" "demo_server" {
  name   = "${var.environment_name}-demo-server-role-policy"
  role   = aws_iam_role.demo_server.id
  policy = data.aws_iam_policy_document.demo_server.json
}


//--------------------------------------------------------------------
// Data Sources

data "aws_iam_policy_document" "assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "demo_server" {
  statement {
    sid    = "DemoServerIAMPolicy"
    effect = "Allow"

    actions = ["ec2:DescribeInstances"]

    resources = ["*"]
  }



  statement {
    sid    = "DemoServerKMS"
    effect = "Allow"

    actions = [
      "kms:Encrypt",
      "kms:Decrypt",
      "kms:DescribeKey",
    ]

    resources = ["*"]
  }
}


