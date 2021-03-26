#-------------------
# Required
#-------------------

# SSH key name to access EC2 instances. This should already exist in the AWS Region
key_name = "abhi-kp-us-east-1-demo"


#-----------------------------------------------
# Optional: To overwrite the default settings
#-----------------------------------------------

# All resources will be tagged with this (default is 'demo-agent-demo')
environment_name = "terraform-demo"

# AWS region & AZs (degault is 'us-east-1' and 'us-east-1a')
aws_region = "us-east-1"
availability_zones = "us-east-1a"

# Instance size (default is t2.micro)
instance_type = "t2.micro"

# Number of demo servers to provision (default is 1)
demo_server_count = 1

# Public key of EC2 key
ec2_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCPn8uST8yfXOKV/gQl8Mo3SYKzr4yAiy/gqVxvRGPS2ls+tt8fCD+lNmzYckFF2bkDB5gKV00GIirJ9YI3WGtbHL82wyy7cRXrIv+01ttJTHNbIR6BCD0iaXb6yIZJkOinoEfQMbMf+Yd9qUORDYaFZvqmnIhrK83McWgO0nVmv7QJGi5XpzCDwEMF7fDndKNIn5IyuumLM4cuJp0r7jf+Dth3ZEcrtAW34fliZOLSVNSy3QI+n077pYVYPN9YtSb35JNllUzkUrpvnGiDiVgKCHQqGmDkfljmzpSxYiqUxcR8ikfylH0AFuTQX11sAT1DOqzHJ4EGkiPQnZAXk0k3"
