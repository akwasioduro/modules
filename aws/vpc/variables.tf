variable "name_prefix" {
  description = "Prefix for the instance name"
  type        = string
  default     = "terraf"
}

variable "vpc_cidr" {
  description = " cidr for vpc "
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  description = "cidr for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr" {
  description = "cidr for private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

