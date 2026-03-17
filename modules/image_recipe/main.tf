resource "aws_imagebuilder_image_recipe" "recipe" {
  name         = var.name
  version      = var.version
  parent_image = var.parent_image

  dynamic "component" {
    for_each = var.component_arns
    content {
      component_arn = component.value
    }
  }
}