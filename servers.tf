#Bastion host
resource "aws_instance" "tf-bastion" {
  ami           = var.ami_id
  instance_type = "t3.micro"
  subnet_id = module.vpc.public_subnets[0]
  associate_public_ip_address = "true"
  security_groups = [aws_security_group.allow_ssh.id]
  key_name =  aws_key_pair.new-key

  tags = {
    Name = "TF-Bastion"
    Terraform = "true"
  }
}
