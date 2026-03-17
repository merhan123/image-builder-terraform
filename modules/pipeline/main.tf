resource "aws_imagebuilder_image_pipeline" "pipeline" {
  name                             = var.name
  image_recipe_arn                 = var.image_recipe_arn
  infrastructure_configuration_arn = var.infrastructure_config_arn

  status = "ENABLED"
}