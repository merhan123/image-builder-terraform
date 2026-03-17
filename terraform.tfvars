region         = "us-east-1"
component_name = "install-nginx"
component_version = "1.0.0"

recipe_name    = "golden-image-recipe"
recipe_version = "1.0.0"

pipeline_name  = "golden-image-pipeline"

instance_type  = "t2.micro"

parent_image   = "arn:aws:imagebuilder:us-east-1:aws:image/amazon-linux-2-x86/x.x.x"
instance_profile_name = "EC2InstanceProfileForImageBuilder"