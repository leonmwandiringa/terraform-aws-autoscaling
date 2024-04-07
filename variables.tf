variable "tags" {
  type = object({
    Name = string
    Author      = string
    Environment = string
    Provisioner = string
    Region      = string
  })
  description = "tags for auto scaling group"
}

variable "desired_capacity" {
  type = number
  description = "desired capacity"
  default = 0
}

variable "min_size" {
  type = number
  description = "min resources"
}

variable "max_size" {
  type = number
  description = "m resources"
}

variable "availability_zones" {
  type = list(string)
  description = "asg operation availability zones"
  default = []
}

variable "monitoring_enabled" {
  type = bool
  description = "launch template monitoring"
  default = true
}

variable "user_data" {
  type = string
  description = "launch template instances user data"
  default = ""
}

variable "http_endpoint" {
  default = "enabled"
  description = "ec2 metadata endpoint enabled"
  type = string
}

variable "http_tokens" {
  default = "required"
  description = "ec2 metadata endpoint tokens"
  type = string
}

variable "http_put_response_hop_limit" {
  default = 1
  type = number
  description = "put hop limit"
}

variable "instance_metadata_tags" {
  default = "enabled"
  description = "instance metadata tags"
  type = string
}

variable "name_prefix" {
  type = string
  description = "asg instances prefix"
}

variable "instance_profile_arn" {
  type = string
  description = "instance profile arn attached to role for instances"
}

variable "image_id" {
  type = string
  description = "launch template image id"
}

variable "instance_type" {
  type = string
  description = "instance type/size"
}

variable "asg_tags" {
  type = list(object({
    key = string
    value = string
    propagate_at_launch = bool
  }))
  default = []
}

variable "health_check_grace_period" {
  type = number
  description = "health check grace period"
  default = 0
}

variable "health_check_type" {
  type = string
  default = "EC2"
  description = "Health check type"
}

variable "protect_from_scale_in" {
  type = bool
  default = false
  description = "protect as from scale in"
}

variable "vpc_security_group_ids" {
  default = []
  description = "instances security group"
  type = list(string)
}

variable "launch_template_version" {
  type = string
  default = "$Latest"
  description = "launch template version"
}