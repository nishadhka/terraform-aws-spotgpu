# ----------------------------------------#
#
#       | Terraform Outputs file |
#
# ----------------------------------------#
# File: outputs.tf
# Author: Vithursan Thangarasa (vithursant)
# ----------------------------------------#

output "id" {
  value = ["${aws_instance.aws_dl_custom_ondem.*.id}"]
}

output "key-name" {
  value = ["${aws_instance.aws_dl_custom_ondem.*.key_name}"]
}


