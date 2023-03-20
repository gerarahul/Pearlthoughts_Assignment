resource "aws_ecr_repository" "this" {
  name = lower(var.project_name) 
}
