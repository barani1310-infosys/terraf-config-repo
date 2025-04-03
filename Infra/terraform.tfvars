region = "ap-south-1"
 
vpc_cidr = "170.180.0.0/16"
 
public_subnet_cidrs = [
"170.180.1.0/24",
"170.180.2.0/24",
"170.180.3.0/24"
]
 
private_subnet_cidrs = [
"170.180.4.0/24",
"170.180.5.0/24",
"170.180.6.0/24"
]
 
azs = [
  "ap-south-1a",
  "ap-south-1b",
  "ap-south-1c"
]
 
cluster_name = "citi-eks-cluster"
 
tags = {
  Environment = "aws-dev"
  Terraform   = "true"
}
 
node_groups = {
  general = {
    desired_size   = 2
    max_size       = 3
    min_size       = 1
    instance_types = ["t3.medium"]
    ami_type       = "AL2_x86_64"
    disk_size      = 20
  }
  spot = {
    desired_size    = 1
    max_size       = 2
    min_size       = 1
    instance_types = ["t3.medium", "t3a.medium"]
    ami_type       = "AL2_x86_64"
    disk_size      = 20
  }
}