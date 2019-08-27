provider "aws" {
  access_key  = "AKIAJNG3KDW5E6TLZTTA"  #"${var.accessKey}";
  secret_key  = "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" #"${var.secretKey}";
  region      = "us-east-2"
}

resource "aws_instance" "vijay" {
  ami = "ami-0f93b5fd8f220e428"
  instance_type = "t2.micro"
  
}
