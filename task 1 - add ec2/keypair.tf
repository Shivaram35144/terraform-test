resource "aws_key_pair" "keypair" {
  key_name   = "task1key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKG5GVNsB/jieMoGjdQiz9W1oK0ZoGfFd3OzJaVTlHuF shivaram@Shivarams-MacBook-Air-2.local"
}

# ssh-keygen -t rsa -b 4096 -f /Users/shivaram/Desktop/deploy-pjt/terraform/ec2inst/key-pair-ec2 to create the keypair
# public_key = file("~/.ssh/my-ec2-key.pub") #to not be visible
