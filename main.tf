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
  cloud {
    organization = "terraform-beginner-bootcamp-efabb95"
    workspaces {
      name = "terra-house-1"
    }
  }

}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid=var.teacherseat_user_uuid
  token=var.terratowns_access_token
  
}

module "home_milan_hosting" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.milan.public_path
  content_version = var.milan.content_version
}


resource "terratowns_home" "home_milan" {
  name = "Best places in Milan!"
  description = <<DESCRIPTION
Milan is a city in Northern Italy, capital of Lombardy, 
and the second-most populous city proper in Italy after Rome. 
The city proper has a population of about 1.4 million,
while its metropolitan city has 3.26 million inhabitants.
DESCRIPTION
  domain_name = module.home_milan_hosting.domain_name
  #domain_name = "3fdq3gz.cloudfront.net"
  town = "missingo"
  content_version = var.milan.content_version
}


module "home_rome_hosting" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.rome.public_path
  content_version = var.rome.content_version
}

resource "terratowns_home" "home_rome" {
  name = "Best places in Rome!"
  description = <<DESCRIPTION
Rome is the capital city of Italy. It is also the capital of the Lazio region, 
the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale.
With 2,860,009 residents in 1,285 km2 (496.1 sq mi), Rome is the country's 
most populated comune and the third most populous city in the European 
Union by population within city limits.
DESCRIPTION
  domain_name = module.home_rome_hosting.domain_name
  #domain_name = "3fdq3gz.cloudfront.net"
  town = "missingo"
  content_version = var.rome.content_version
}