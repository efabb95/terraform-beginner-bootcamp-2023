output "bucket_name_Rome" {
  description = "Bucket name for our static website hosting"
  value = module.home_rome_hosting.bucket_name
}

output "website_endpoint_Rome" {
  description = "S3 static website hosting endpoint"
  value = module.home_rome_hosting.website_endpoint
}

output "domain_name_Rome" {
  description = "The CloudFront Distribution Domain Name"
  value = module.home_rome_hosting.domain_name
}


output "bucket_name_Milan" {
  description = "Bucket name for our static website hosting"
  value = module.home_milan_hosting.bucket_name
}

output "website_endpoint_Milan" {
  description = "S3 static website hosting endpoint"
  value = module.home_milan_hosting.website_endpoint
}

output "domain_name_Milan" {
  description = "The CloudFront Distribution Domain Name"
  value = module.home_milan_hosting.domain_name
}
