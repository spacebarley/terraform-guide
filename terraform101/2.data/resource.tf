# 나는 aws_ami 를 가져와서 쓰고싶은데
# 이름이 ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-* 를 만족하고
# virtualization-type은 hvm이고
# 소유자의 aws account ID가 099720109477 인 AMI를 쓰고 싶어!
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# 나는 aws_instance 리소스를 만들고 싶어
# 어떻게 만들어야 하는지는 https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance 에 적혀있지
# doc을 보니 ami 랑 instance_type은 필수로 입력해야하는구나!
# 이름이 없으면 심심하니까 tag도 같이 넣어주자
resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
      Name = "terraform101"
      Description = "I am instance created by terraform101 :)"
  }
}
