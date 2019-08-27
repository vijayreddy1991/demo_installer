provider "aws" {
  access_key  = "${int_keys_accessKey}";
  secret_key  = "${int_keys_SecretKey}";
  region      = "us-east-2"
}

resource "aws_instance" "vijay" {
  ami = "ami-0f93b5fd8f220e428"
  instance_type = "t2.micro"
  
}
