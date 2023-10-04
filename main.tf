terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "ExamPro"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  #cloud {
  #  organization = "ExamPro"
  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}

}

provider "terratowns" {
  endpoint = "http://localhost:4567/api"
  user_uuid="e328f4ab-b99f-421c-84c9-4ccea042c7d1" 
  token="9b49b3fb-b8e9-483c-b703-97ba88eef8e0"
  
}

//module "terrahouse_aws" {
//  source = "./modules/terrahouse_aws"
//  user_uuid = var.user_uuid
//  bucket_name = var.bucket_name
//  index_html_filepath = var.index_html_filepath
//  error_html_filepath = var.error_html_filepath
//  content_version = var.content_version
//  assets_path = var.assets_path
//}


resource "terratowns_home" "home" {
  name = "Best places in Milan!"
  description = <<DESCRIPTION
Milan is a city in Northern Italy, capital of Lombardy, 
and the second-most populous city proper in Italy after Rome. 
The city proper has a population of about 1.4 million,
while its metropolitan city has 3.26 million inhabitants.
DESCRIPTION
  #domain_name = module.terrahouse_aws.cloudfront_url
  domain_name = "3fdq3gz.cloudfront.net"
  town = "gamers-grotto"
  content_version = 1
}