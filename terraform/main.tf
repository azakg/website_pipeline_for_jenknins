provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "Website_Server2" {
  ami = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  key_name = "docker_test"
  vpc_security_group_ids = ["sg-06c70284d0f06306e"]
  tags = {
    Name = "WebSite_Server2"
  }
}

resource "aws_instance" "Jenkins_Terraform" {
    ami = "ami-0e2c8caa4b6378d8c"
    instance_type = "c7a.medium"
    availability_zone = "us-east-1a"
    key_name = "docker_test"
    vpc_security_group_ids = ["sg-04684c4c64100973b"]
    tags = {
        Name = "Jenkins_Terraform"
    }
  
}