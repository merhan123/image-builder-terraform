module "component" {
  source = "./modules/components"

  name      = var.component_name
  version   = var.component_version
  yaml_path = "${path.root}/components/install-nginx.yaml"
}

module "recipe" {
  source = "./modules/image_recipe"

  name         = var.recipe_name
  version      = var.recipe_version
  parent_image = var.parent_image

  component_arns = [
    module.component.component_arn
  ]
}

module "infra" {
  source = "./modules/infrastructure_config"

  name          = "image-builder-infra"
  instance_type = var.instance_type
  instance_profile_name = var.instance_profile_name
}

module "pipeline" {
  source = "./modules/pipeline"

  name                      = var.pipeline_name
  image_recipe_arn          = module.recipe.recipe_arn
  infrastructure_config_arn = module.infra.infra_arn
}
