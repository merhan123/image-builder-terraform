variable "name" {
    type = string
    default = ""
}
variable "recipe_version" {
    type = string
    default = ""
}
variable "parent_image" {
    type = string
    default = ""
}
variable "component_arns" {
  type = list(string)
  default = []
}
