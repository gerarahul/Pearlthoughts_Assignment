variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_id" {
  default = "vpc-0a9be39559a0d7407"
}

variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-04d1226e54f7bd10b", "subnet-0d0817f6297472d0d", "subnet-00b5e3ab752513f0d"]
}

variable "project_name" {
  default = "nodejsapp"
}

variable "container_port" { #container and host port should be same while running applications using aws ecs
  default = 3000
}

variable "host_port" {
  default = 3000
}

variable "cpu" {
  default = "256"
}

variable "memory" {
  default = "512"
}

variable "ports" {
  type        = list(string)
  default     = [443, 80, 22, 8080, 3000]
  description = "enter port numbers which should be open for inbound traffic"
}

variable "ecr_url" {
  description = "The URL of the ECR repository"
  default     = "918336355366.dkr.ecr.ap-south-1.amazonaws.com/"
  type        = string
}
