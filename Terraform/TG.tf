# Create Target Group

resource "aws_lb_target_group" "tg1" {
  name     = "web-serverstg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id

  health_check {
    interval   = 30
    timeout    = 5
    unhealthy_threshold = 2
    healthy_threshold = 2
  }
}

# Create a new load balancer
# For Application Load Balancer (ALB)

resource "aws_lb" "ALB1" {
  name               = "LB1"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sg_demo.id]
  subnets = [for subnet in aws_subnet.public : subnet.id]

  enable_deletion_protection = true

  access_logs {
    bucket  = aws_s3_bucket.buck_1
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}