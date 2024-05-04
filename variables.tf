# Contenu de variables.tf
variable "ami_id" {
  description = "ami_id"
  type        = string
  default     = "ami-0111c5910da90c2a7"
}
variable "aws_region" {
  description = "aws_region"
  type        = string
  default     = "eu-west-3"
}
variable "access_key" {
  description = "access_key"
  type        = string
  default     = "AKIAU6GDXDMH4BKACKOH"
}
variable "secret_key" {
  description = "secret_key"
  type        = string
  default     = "4+7J9vJRudpuzNMQxXKJ3dJcfR7O1bAdnC32McEd"
}