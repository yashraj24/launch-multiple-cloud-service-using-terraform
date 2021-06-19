resource "aws_instance" "aws_ami"{
  ami           = "ami-010aff33ed5991201"
instance_type = var.types["ap-south-1"]
  key_name = "aws_key_yashraj007"
  vpc_security_group_ids = [ "sg-20e9365d" ]
  availability_zone = var.az_aws[2]

  tags = {
    Name = "web server by terraform-2"
  }

  count = var.istest ? 0 : 1
} 

