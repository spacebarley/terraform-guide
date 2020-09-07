# 나는 aws_instance 리소스를 만들고 싶어
# 어떻게 만들어야 하는지는 https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance 에 적혀있지
# doc을 보니 ami 랑 instance_type은 필수로 입력해야하는구나!
# 이름이 없으면 심심하니까 tag도 같이 넣어주자
resource "aws_instance" "example" {
  ami           = "ami-064c81ce3a290fde1"
  instance_type = "t3.micro"

  tags = {
      Name = "terraform101"
      Description = "I am instance created by terraform101 :)"
  }
}