variable "user_uuid" {
  description = "The UUID of the user"
  type        = string
  validation {
    condition        = can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$", var.user_uuid))
    error_message    = "The user_uuid value is not a valid UUID."
  }
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z0-9.-]{3,63}$", var.bucket_name))
    error_message = "Invalid bucket name. The name must be between 3 and 63 characters, contain only letters, numbers, hyphens, and periods, and must not start or end with a hyphen or period."
  }
}

variable "public_path" {
  description = "The file path of public dir"
  type        = string
}

variable "content_version" {
  description = "Content version. Integer starting at 1"
  type = number

  validation {
    condition = var.content_version > 0 && floor(var.content_version) == var.content_version
    error_message = "The content_version must be a positive integer starting at 1"
  }
  
}
