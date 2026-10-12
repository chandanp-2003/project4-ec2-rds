variable "aws_region" {
  type        = string
  default     = "ap-south-1"
  description = "AWS region to deploy into"
}

variable "project_name" {
  type        = string
  description = "Prefix for all resource names"
  default     = "myapp"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet" {
  type        = string
  description = "CIDR for public subnet (EC2)"
  default     = "10.0.1.0/24"
}

variable "private_subnet" {
  type        = string
  description = "CIDR for private subnet (RDS)"
  default     = "10.0.3.0/24"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "db_instance_class" {
  type        = string
  description = "RDS instance class"
  default     = "db.t3.micro"
}

variable "db_username" {
  type        = string
  description = "RDS master username"
  default     = "admin"
}

variable "db_password" {
  type        = string
  description = "RDS master password, min 8 chars"
  sensitive   = true
}

variable "my_ip" {
  type        = string
  description = "Your public IP in CIDR form"
}