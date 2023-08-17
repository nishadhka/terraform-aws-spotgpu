# ----------------------------------------#
#
#       | Terraform Variables file |
#
# ----------------------------------------#
# File: variables.tf
# Author: Vithursan Thangarasa (vithursant)
# ----------------------------------------#

variable "my_region" {
  type    = string
  default = "us-east-1"
  description = "The AWS region to deploy into (i.e. us-east-1)"
}

variable "avail_zone" {
  type    = string
  default = "us-east-1a"
  description = "The AWS availability zone location within the selected region (i.e. us-east-2a)."
}

variable "my_ip" {
  type    = string
  default = "161.69.22.122/32"
}

variable "my_cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}

variable "my_key_pair_name" {
  type    = string
  default = "tf-key-pair-spot-ec2"
  description = "The name of the SSH key to install onto the instances."
}

variable "ssh-key-dir" {
  default     = "~/.ssh/"
  description = "The path to SSH keys - include ending '/'"
}

variable "instance_type" {
  type    = string
  default = "t4g.small"
  description = "The instance type to provision the instances from (i.e. p2.xlarge)."

}

variable "ebs_volume_size" {
  type    = string
  default = "2"
  description = "The Amazon EBS volume size (1 GB - 16 TB)."
}

variable "ebs_volume_device_name" {
  type    = string
  default = "/dev/sdh"
  description = "The Amazon EBS device name"
}

variable "ebs_volume_type" {
  type    = string
  default = "gp2"
  description = "The Amazon EBS volume type"
}

variable "ebs_volume_tags" {
  type = list(string)
  default = ["tf_ebs_vol"]
  description = "The Amazon EBS volume tags"
}



variable "ami_id" {
  type    = string
  default = "ami-06e9b30b57b32ec3a" # Default AWS Deep Learning AMI (Ubuntu)
  description = "The AMI ID to use for each instance. The AMI ID will be different depending on the region, even though the name is the same."
}

variable "num_instances" {
  type    = string
  default = "3"
  description = "The number of AWS EC2 instances to provision."
}
