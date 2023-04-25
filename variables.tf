variable "name" {
  type    = string
  default = "example-websocket-api"
}

variable "authorization_type" {
  type    = string
  default = "AWS_IAM"
}

variable "stage_name" {
  type    = string
  default = "pike-stage"
}

variable "kms_key_id" {
  description = "The arn of the KMS key"
}
