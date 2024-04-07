output "launch_template_id" {
  value = aws_launch_template.default.id
}

output "launch_template_arn" {
  value = aws_launch_template.default.arn
}

output "auto_scaling_group_arn" {
  value = aws_autoscaling_group.default.arn
}

output "auto_scaling_group_id" {
  value = aws_autoscaling_group.default.id
}

output "auto_scaling_group_name" {
  value = aws_autoscaling_group.default.id
}