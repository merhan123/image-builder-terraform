variable "region" {
    type = string
    default = "us-east-1"
}
variable "component_name" {
    type = string
    default = ""
}
variable "component_version" {
    type = string
    default = ""    
}

variable "recipe_name" {
    type = string
    default = ""
}
variable "recipe_version" {
    type = string
    default = ""
}

variable "pipeline_name" {
    type = string
    default = ""
}
variable "instance_type" {
    type = string
    default = ""
    }

variable "parent_image" {
    type = string
    default = ""
}


variable "instance_profile_name" {
    type = string
    default = ""
  
}