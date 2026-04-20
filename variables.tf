variable "app_port" {
  type        = number
  description = "Port the application listens on"
  default     = 80
}

variable "autoscale_group_min_max" {
  type = object({
    min = number
    max = number
  })

  description = "The minimum and maximum size for the autoscale group."
}

variable "autoscale_group_size" {
  type        = number
  description = "Default size of autoscale group."
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all resources"
}

variable "instance_tags" {
  type = map(string)
  description = "Additional tags for the EC2 instances in the autoscaling group. These will be merged with the default tags."
  default = {}
}

variable "image_id" {
  type        = string
  description = "The image ID for the Autoscale Group instances"
}

variable "instance_type" {
  type        = string
  description = "Instance type for Autoscale group"
  default     = "t3.micro"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module."
}

variable "user_data_contents" {
  type        = string
  description = "User data contents to be passed in the launch template"
}

variable "vpc_id" {
  type        = string
  description = "(Required) ID of the VPC where resources will be created."
}

variable "vpc_public_subnets" {
  type        = list(string)
  description = "(Required) List of public subnet IDs for the Autoscale group and NLB"
}