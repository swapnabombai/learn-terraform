data "aws_ec2_instance_spot_price" "example" {
  instance_type     = "t3.micro"
  availability_zone = "us-east-1a"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}
output "price" {
  value = data.aws_ec2_instance_spot_price.example.spot_price
}