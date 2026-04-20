output "alb_front_end_dns_name" {
  description = "The public DNS name of the load balancerß"
  value       = aws_lb.front_end.dns_name
}

output "asg_front_end_name" {
  description = "The name of the autoscaling group"
  value       = aws_autoscaling_group.front_end.name
}