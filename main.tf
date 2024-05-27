#Create security group for EC2 server with Jenkins
resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins security group"
  description = "Allow access to ports 8080 and 22"
  vpc_id      = var.vpc_id

  #Inbound Rules for ports 8080 and 22
  ingress {
    description = "allow all traffic to 8080"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
   ingress {
    description = "allow all traffic to 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Outbound rule
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

# Terraform Resource Block to create EC2 Jenkins Server
resource "aws_instance" "web_server" {
  ami                    = var.ami_id
  instance_type          = var.instance
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  user_data              = file("install_jenkins.sh")

  tags = {
    Name = "EC2 Jenkins Server"
  }
}

# Terraform Resource Block to create S3 bucket
resource "aws_s3_bucket" "tf-bucket" {
  bucket = var.mybucketname

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.tf-bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.example]

  bucket = aws_s3_bucket.tf-bucket.id
  acl    = "private"
}
