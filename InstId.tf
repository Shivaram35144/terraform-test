data "aws_ami" "amiID" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["*ubuntu*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

output "amiID" {
  description = "value of the amiID"
  value       = data.aws_ami.amiID.id
}