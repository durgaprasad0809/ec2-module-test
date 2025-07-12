module "ec2" {
    source = "../Terraform_Modules/terraform-aws-ec2-module"
    sg_id = "sg-0e978039cdb6c3057"
    instance_type = "t3.small"
}

output "public_ip" {
   value =  module.ec2.public_ip
}