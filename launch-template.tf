resource "aws_launch_template" "default" {
  name_prefix   = var.name_prefix
  image_id      = var.image_id
  instance_type = var.instance_type

  iam_instance_profile {
    name = var.name_prefix
    arn = var.instances_role_arn
  }

  metadata_options {
    http_endpoint               = var.http_endpoint
    http_tokens                 = var.http_tokens
    http_put_response_hop_limit = var.http_put_response_hop_limit
    instance_metadata_tags      = var.instance_metadata_tags
  }

  monitoring {
    enabled = var.monitoring_enabled
  }

  user_data = base64encode(var.user_data)
}