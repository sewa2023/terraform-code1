
resource "aws_sns_qa" "demo" {
  name = var.topic_name
  tags = {
    team = var.Team
  }
}

resource "aws_sns_qa_subscription" "email-target" {
  topic_arn = aws_sns_qa.demo.arn
  protocol  = var.protocol_type
  endpoint  = var.end_point

}