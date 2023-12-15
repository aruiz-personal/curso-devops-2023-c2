terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

import {
    to = aws_security_group.mysg
    id = "sg-09635cb4dd28d8d97"
}
