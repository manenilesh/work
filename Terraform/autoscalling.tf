resource "aws_launch_template" "temp_1" {
  name = "temp_1"

  block_device_mappings {
    device_name = "/dev/sdf"

    ebs {
      volume_size = 20
    }
  }

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 4
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = true
  disable_api_termination = true

  ebs_optimized = true

  elastic_gpu_specifications {
    type = "test"
  }

  elastic_inference_accelerator {
    type = "eia1.medium"
  }

  iam_instance_profile {
    name = "test"
  }

  image_id = "ami-0c7217cdde317cfec"

  instance_initiated_shutdown_behavior = "terminate"

  instance_type = "t2.micro"

  key_name = "mydemokey"

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
    instance_metadata_tags      = "enabled"
  }

  network_interfaces {
    associate_public_ip_address = true
  }

  placement {
    availability_zone = "us-east-1a"
  }

  vpc_security_group_ids = ["sg-0ee4c99fc79983a37"]

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "temp_Home_1"
    }
  }
     user_data = <<EOF
#!/bin/bash
sudo -i
apt update
apt-get install apache2 -y
apt install unzip -y
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/finexo.zip
unzip finexo.zip
cd finexo-html
mv * /var/www/html/
EOF
}
