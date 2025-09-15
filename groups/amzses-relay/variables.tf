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