resource "aws_instance" "my_ec2" {
  ami           = "ami-042b4708b1d05f512"
  instance_type = "t3.micro"

  tags = {
    Name = "TerraformAssignment"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "durjoy-terraform-assignment-${random_id.bucket_id.hex}"

  tags = {
    Name = "TerraformAssignment"
  }
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
