# dev 

module "dev-app" {
    source = "./my_app_infra_module"
    my_env = "dev"
    instance_type = "t2.micro"
    ami = "ami-012967cc5a8c9f891" 
}

#prd
module "prd-app" {
    source = "./my_app_infra_module"
    my_env = "prod"
    instance_type = "t2.medium"
    ami = "ami-012967cc5a8c9f891"
}

#stg
module "stg-app" {
    source = "./my_app_infra_module"
    my_env = "stage"
    instance_type = "t2.small"
    ami = "ami-012967cc5a8c9f891"
  
}