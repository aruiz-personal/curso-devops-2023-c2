resource "aws_instance" "myec2" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name      = "devops-course-2023"

 
  tags = {
    Name = "tf-example"
  }
}

resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "andres-test-devops-2023-cp2"
}