## Create Application Layer Balancer

resource "aws_lb" "lb_1" {
    internal = false
    load_balancer_type = "application"
    subnets = [aws_subnet.private_1.id , aws_subnet.public_1.id]
    security_groups = [aws_security_group.instance_sg.id] 
}

## Create Target Group

resource "aws_lb_target_group" "tg_1" { 
    name = "tg-1"
    port = 80
    protocol = "HTTP"
    vpc_id = aws_vpc.vpc1.id
}



## Create 2 Attachment with target group 
# Attachment 1

resource "aws_lb_target_group_attachment" "lb_attach_1" {
  target_group_arn = aws_lb_target_group.tg_1.arn
  target_id = aws_instance.instance_1.id
  port = 80
  depends_on = [ aws_instance.instance_1 ]
}

# Attachment 2

resource "aws_lb_target_group_attachment" "lb_attach_2" {
  target_group_arn = aws_lb_target_group.tg_1.arn
  target_id = aws_instance.instance_2.id
  port = 80
  depends_on = [ aws_instance.instance_2 ]
}





## Create a Listner

resource "aws_lb_listener" "lb_listener_1" {
  load_balancer_arn = aws_lb.lb_1.arn
  port = 80
  protocol = "HTTP"
  default_action {
    target_group_arn = "${aws_lb_target_group.tg_1.id}"
    type = "forward"
  }
}

