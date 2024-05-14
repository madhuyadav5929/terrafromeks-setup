variable "vpc_id" {
  default = "jenkins-vpc"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default =   ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

}

variable "public_subnets" {
  default = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]

}

variable "azs" {
  default = ["us-east-1a", "us-east-1b"]
  
}

variable "cluster_version" {
  default = "1.27"
}

variable "cluster_name" {
  default = "my-eks-cluster"
}

variable "routes" {
  default = ""
  
}