provider "aws" {
  region   = "ap-south-1"
  shared_credentials_file = "c:/Users/Admin/.aws/credentials"
}

resource "aws_instance" "ubuntu_vm" {
    ami = "ami-0c1a7f89451184c8b"
    instance_type = "t2.micro"

    tags = {
        Name = "tf-test-ubuntu-vm"
    }
}

