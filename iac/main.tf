# Configure the AWS provider
provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

# Define the EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI ID
  instance_type = "t2.micro"                # Replace with your desired instance type

  tags = {
    Name = "ExampleInstance"
  }terraform apply
terraform destroy

}
terraform init
