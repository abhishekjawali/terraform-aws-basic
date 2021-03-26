resource "aws_key_pair" "demo_generated_key" {
  key_name   = "${var.key_name}"
  public_key = "${var.ec2_public_key}"
}

resource "aws_instance" "demo-instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = aws_key_pair.demo_generated_key.key_name
  vpc_security_group_ids = [
    aws_security_group.demo.id,
    ]
  subnet_id = module.demo_vpc.private_subnets[0]
  iam_instance_profile = aws_iam_instance_profile.demo_server.id
  user_data = file("scripts/setup-script.sh")
  tags = {
    Name = "http-instance"
  }
}


