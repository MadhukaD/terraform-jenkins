# Deploying EC2 Instance and S3 Bucket with Jenkins using Terraform

This exercise was completed with the guidence of an article by **Laura Collins**. Read the article [here](https://blog.devops.dev/deploying-ec2-instance-and-s3-bucket-with-jenkins-using-terraform-668e13c16687)

## Tasks performed:

- Create an AWS Cloud9 environment
- Install Terraform in the created environment
- Create AWS credentials with AWS IAM and configure Cloud9 enveironment with them
- Create the providers.tf and add the provider block for AWS
- Create the main.tf to provision the security group, EC2 instance and S3 bucket
- Create the variables.tf to avoid hardcoding the values in main.tf
- Create the install_jenkins.sh script to bootstrap the ec2 instance that installs and starts Jenkins
- Perform Terraform commands (terraform init, validate, plan and apply) to provision the specified resources
- Access the created EC2 instance and complete the Jenkins installation

## Screenshots of the work

### Jenkins Server on EC2

![image](https://github.com/MadhukaD/terraform-jenkins/assets/83831219/dbab43b7-444c-45cd-8475-00650d25bade)

### Cloud9 Environment

![Cloud9](https://github.com/MadhukaD/terraform-jenkins/assets/83831219/da5d2ad8-edcb-480d-9f71-dee7cd60a774)
