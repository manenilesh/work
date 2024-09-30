# resource "aws_launch_template" "temp1" {
#   name = "Temp_Home"

#   block_device_mappings {
#     device_name = "/dev/sdf"

#     ebs {
#       volume_size = 8
#     }
#   }

#   capacity_reservation_specification {
#     capacity_reservation_preference = "open"
#   }


#   credit_specification {
#     cpu_credits = "standard"
#   }

#   disable_api_stop        = true
#   disable_api_termination = true

#   ebs_optimized = true

#   image_id = "ami-0c7217cdde317cfec"

#   instance_initiated_shutdown_behavior = "terminate"

#   instance_type = "t2.micro"


#   key_name = "mydemokey"

#   metadata_options {
#     http_endpoint               = "enabled"
#     http_tokens                 = "required"
#     http_put_response_hop_limit = 1
#     instance_metadata_tags      = "enabled"
#   }

#   network_interfaces {
#     associate_public_ip_address = true
#   }

#   placement {
#     availability_zone = "us-east-1a"
#   }


#   vpc_security_group_ids = ["sg-0ee4c99fc79983a37"]

#   tag_specifications {
#     resource_type = "instance"

#     tags = {
#       Name = "test"
#     }
#   }

#   user_data = filebase64("${path.module}/example.sh")
# }