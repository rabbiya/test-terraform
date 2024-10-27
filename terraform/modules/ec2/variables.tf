variable "ami_id" {
  description = "The AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "Type of instance"
  type        = string
}

variable "instance_name" {
  description = "The instance name"
  type        = string
}

variable "eip_name" {
  description = "Name for the Elastic IP"
  type        = string
}

variable "key_name" {
  description = "mawsim"
  type        = string
}

variable "sg_id" {
  description = "The Security Group ID to attach to the EC2 instance"
  type        = string
}
