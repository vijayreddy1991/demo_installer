# main creds for AWS connection
variable "accessKey" {
  description = "AWS access key"
  default = $int_keys_accessKey"	  
}

variable "secretKey" {
  description = "AWS secert access key"
  default = "$int_keys_SecretKey"
}
