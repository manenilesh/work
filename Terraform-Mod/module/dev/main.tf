

  module "ec2_resource" {
      source = "../../resources/ec2"
      aws_instance_ami="ami-0c7217cdde317cfec"
      aws_instance_type="t2.large"
      aws_instance_key="aws-demo"
      aws_instance_public_address="true"
      aws_instance_Tags="Demo-insta"
      aws_security_group_Name="Terraform-SG"
      aws_instance_subnet_1= module.vpc_resource.output_subnet_cidr.id
      aws_instance_sg_vpc= module.vpc_resource.output_vpc_id.id
      
  }
 # module "IAM_resource" {
 #    source = "../../resources/IAM"

  #}
    
  module "vpc_resource" {
  
       source = "../../resources/vpc"
       aws_vpc_CIDR="10.10.0.0/16"
       aws_vpc_Tags="Terra-VPC"
       aws_vpc_subnet_1_CIDR="10.10.0.0/17"
       aws_vpc_subnet_2_CIDR="10.10.128.0/17"
       aws_vpc_IGW_Tags="Terra-IGW"
       aws_vpc_route_table_CIDR="0.0.0.0/0"
       aws_vpc_RouteTable_Tags="Terra-Rute"
}
  
# module "s3_resource" {
# 
#      source = "../../resources/s3"
#     
#   
# }
#
# 
# module "SNS_resource"{
# 
#      source = "../../resources/SNS"
#     
#   
# }
# module "auto_resource"{
#      source = "../../resources/auto"
# }
#
#    module "auto_resource"{
#         source = "../../resources/RDS"
#    }
#

