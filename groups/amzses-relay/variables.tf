variable "aws_account" {
  type        = string
  description = "The name of the AWS account in which resources will be provisioned."
}

variable "aws_region" {
  type        = string
  description = "The AWS region in which resources will be created."
}

variable "environment" {
  type        = string
  description = "The environment name to be used when provisioning AWS resources."
}

variable "domain" {
  type        = string
  description = "The domain  to be used when sending email."
  default = "companieshouse.gov.uk"
}

variable "application" {
  type = string
  description = "The application name"
}

variable "repo" {
  type = string
  description = "The github source repo"
  default = "amzses-terraform"
}

variable "service" {
  type = string
  description = "The service name to be used when creating AWS resources."
  default = "Amazon SES"
}

variable "service_subtype" {
  type        = string
  description = "The service subtype name to be used when creating AWS resources."
  default = "smtp_user"
}

variable "team" {
  type        = string
  description = "The team name for ownership of this service."
  default     = "Linux & Storage Support"
}