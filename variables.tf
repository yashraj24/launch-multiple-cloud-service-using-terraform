/*variable "x" {
  default = "t2.micro"
  type = string
}*/

#variable "amitype" {}

variable "mtype" {}

variable "istest" {
  type = bool
}

variable "az_aws" {
  default = [ "ap-south-1a", "ap-south-1b", "ap-south-1c" ]
  type = list
}

variable "types" {
  type = map
  default = {
    us-east-1 = "t2.nano"
    ap-south-1 = "t2.micro"
    us-west-1 = "t2.medium"
  }  
}

output "xx" {
  value = var.types ["ap-south-1"]
}