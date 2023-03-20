output "aws_region" {
  value       = var.aws_region
  description = "The AWS region where the resources are deployed."
}

output "ecr_repository_name" {
  value       = aws_ecr_repository.this.name
  description = "The name of the ECR repository"
}

output "ecs_cluster_name" {
  value       = aws_ecs_cluster.ecs_cluster.name
  description = "The name of the ECS cluster."
}

output "ecs_service_name" {
  value       = aws_ecs_service.this.name
  description = "The name of the ECS service."
}

output "ecs_container_name" {
  value       = var.project_name
  description = "The name of the container in the task definition."
}

output "alb_dns_name" {
  value       = aws_lb.this.dns_name
  description = "The DNS name of the Application Load Balancer."
}
