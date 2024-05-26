# Deploying EC2 Instance and S3 Bucket with Jenkins using Terraform

This exercise was completed with the guidance of an article by **Laura Collins**. Read the article [here](https://blog.devops.dev/deploying-ec2-instance-and-s3-bucket-with-jenkins-using-terraform-668e13c16687).

## Tasks Performed:

- Created an AWS Cloud9 environment.
- Installed Terraform in the created environment.
- Created AWS credentials with AWS IAM and configured the Cloud9 environment with them.
- Created the `providers.tf` file and added the provider block for AWS.
- Created the `main.tf` file to provision the security group, EC2 instance, and S3 bucket.
- Created the `variables.tf` file to avoid hardcoding values in `main.tf`.
- Created the `install_jenkins.sh` script to bootstrap the EC2 instance, which installs and starts Jenkins.
- Performed Terraform commands (`terraform init`, `validate`, `plan`, and `apply`) to provision the specified resources.
- Accessed the created EC2 instance and completed the Jenkins installation.

At the end of the exercise, I deleted all the created resources with `terraform destroy` command.

## Screenshots of the Work

### Jenkins Server on EC2

![Jenkins Server](https://github.com/MadhukaD/terraform-jenkins/assets/83831219/dbab43b7-444c-45cd-8475-00650d25bade)

### Cloud9 Environment

![Cloud9](https://github.com/MadhukaD/terraform-jenkins/assets/83831219/da5d2ad8-edcb-480d-9f71-dee7cd60a774)
