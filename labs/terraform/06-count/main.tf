resource "aws_instance" "myec2" {
  count         = 3
  ami           = "ami-08a52ddb321b32a8c"
  instance_type = "t2.micro"
}
