## Create SNS Topic

resource "aws_sns_topic" "sns_topic" {
  name = "your_topic_name"
}

## SNS E-mail subscription 

resource "aws_sns_topic_subscription" "sns_sub_email" {
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol  = "email"
  endpoint  = "manenilesh912@example.com"
}



