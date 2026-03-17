resource "aws_imagebuilder_infrastructure_configuration" "infra" {
name          = var.name
instance_profile_name = var.instance_profile_name
instance_types = [var.instance_type]

terminate_instance_on_failure = true
}