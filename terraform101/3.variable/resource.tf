# instance type으로 variable로 들어온 값을 사용할 거야
resource "aws_instance" "example" {
  ami           = "ami-064c81ce3a290fde1"
  instance_type = var.instance_type

  tags = {
      Name = var.instance_name
      Description = "I am instance created by terraform101 :)"
  }
}
