# A terraform template that deploys EKS on AWS

**This is a ssignment. This is tested, though it's not recommended to use it in production, unless you reviewed it carefully.** 

This creates:
* A VPC, one private and one public subnets on AWS
*  Configures security groups
*  Creates a kubernetes cluster with two groups of one t2.micro ec2 instances
*  Configures the output of run terraform

## Before you run this, please:
* Ensure you have configured your aws environment. For this, you need first to create an access key id and secret access key pair on your aws and then configure your aws cli using `aws configure` command.
* Execute `cat ~/.aws/credentials` command to ensure it's configured properly.
* Run `terraform init` to initialize your terraform environment/setup. 
* In order to prevent any trouble, it's advised to run `terraform validate` before running `terraform apply`
