# resource "aws_sns_topic" "user_updates" {
#   name = var.SNS_topic_name
# }


# resource "aws_sns_topic_subscription" "user_updates_email_target" {
#   topic_arn = aws_sns_topic.user_updates.arn
#   protocol  = var.aws_sns_topic_subscription_info.a
#   endpoint  = var.aws_sns_topic_subscription_info.b
# }

