resource "aws_imagebuilder_component" "component" {
  name     = var.name
  platform = "Linux"
  version  = var.component_version

  data = file(var.yaml_path)
}
