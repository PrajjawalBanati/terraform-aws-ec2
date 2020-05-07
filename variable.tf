variable "region"{
    type= string
    default="us-east-1"
    }
variable "vpc_cidr_block" {
    type= string
    default="10.0.0.0/16" 
}

variable "instance_count" {
  description= "No. of EC2 instances"
  default = 1
  type = number  
}
variable "subnet_cidr_block" {
    type = string
    default="10.0.1.0/24"  
}
variable "instance_image" {
    type=string
  
}
variable "instance_type" {
    type=string
    default="t2.micro"  
}
