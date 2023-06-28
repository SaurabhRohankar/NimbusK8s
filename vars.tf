variable "AWS_REGION" {
	default = "ap-south-1"
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "availability_zones" {
  type = list(string)
  default = [ "ap-south-1a", "ap-south-1b", "ap-south-1c" ]
}

variable "private_subnets" {
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "ami_id" {
    type = string
    default = "ami-03b31136fc503b84a"
}