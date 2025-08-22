module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "21.0.8"
##  name            = local.name


  name                   = "011y-cluster-jp"
  kubernetes_version     = "1.32"
  endpoint_public_access = true

    addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }