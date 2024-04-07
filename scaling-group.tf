resource "aws_autoscaling_group" "default" {
  availability_zones = var.availability_zones
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  health_check_grace_period = var.health_check_grace_period
  health_check_type = var.health_check_type
  protect_from_scale_in     = var.protect_from_scale_in
  vpc_zone_identifier = var.vpc_zone_identifier

  dynamic "tag" {
    for_each = var.asg_tags
    content {
      key                 = tag.value.key
      value               = tag.value.value
      propagate_at_launch = tag.value.propagate_at_launch
    }
  }

  launch_template {
    id      = aws_launch_template.default.id
    version = var.launch_template_version
  }
}