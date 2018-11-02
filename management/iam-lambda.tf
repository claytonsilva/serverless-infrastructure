data "template_file" "policy_s3_lambda" {
  template = "${file("${path.module}/s3-policy.json.tpl")}"

  vars {
    id = "${aws_s3_bucket.lambda.id}"
  }
}

resource "aws_iam_policy" "lambda" {
  name        = "lambda"
  path        = "/"
  description = "Lambda repos."
  policy      = "${data.template_file.policy_s3_lambda.rendered}"
}
