variable "teacherseat_user_uuid" {
    type = string
}

variable "terratowns_access_token" {
    type = string
}

variable "terratowns_endpoint" {
    type = string
}

variable "bucket_name" {
    type = string
}

variable "index_html_filepath" {
    type = string
}

variable "error_html_filepath" {
    type = string
}

variable "milan" {
  type = object({
    public_path = string
    content_version = number
  })
}

variable "rome" {
  type = object({
    public_path = string
    content_version = number
  })
}