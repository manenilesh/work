## Create EventBridge rule
 resource "aws_cloudwatch_event_rule" "trrigger_rule" {
   name        = "event1"
   description = "Triggers SNS notification on EC2 instance creation"
 
   event_pattern = <<EOF
 {
   "source": [
     "aws.ec2"
   ],
   "detail-type": [
     "EC2 Instance State Change Notification"
   ],
   "detail": {
     "state": [
       "running" , "pending"
     ]
   }
 }
 EOF
 }
 
 
 
 resource "aws_cloudwatch_event_target" "sns_target" {
   rule      = aws_cloudwatch_event_rule.trrigger_rule.name
   target_id = aws_sns_topic.sns_topic.id
   arn      = aws_sns_topic.sns_topic.arn
 }


