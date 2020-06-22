variable "region" {
  description = "AWS region"
  default     = "eu-west-1"
}

variable "env" {
  description = "Depolyment environment"
  default     = "dev"
}

variable "repository_branch" {
  description = "Repository branch to connect to"
  default     = "master"
}

variable "repository_owner" {
  description = "GitHub repository owner"
  default     = "ckky123"
}

variable "repository_name" {
  description = "GitHub repository name"
  default     = "shopping-site"
}

variable "static_web_bucket_name" {
  description = "S3 Bucket to deploy to"
  default     = "static-web-example-bucket"
}

variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "artifacts-bucket"
}