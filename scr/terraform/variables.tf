
#variable "vpc_cidr" {
#}
#variable "private_subnets" {
#}
#variable "public_subnets" {
#}
####################################
variable "name" {
}
variable "vpc_id" {
}
variable "subnets_ids" {
}
variable "tags" {
}
variable "region" {
  description = "aws region"
  default     = "eu-central-1"
}

### Backend vars
variable "iam_profile" {
  description = "Profile of aws creds"
  default     = null
}

variable "zone_name" {
  description = "DNS зона для ingress"
  type        = string
}



# dobavil
# variable "name" {
#   default = "student13"
# }

# variable "zone_name" {
#   default = "devops8.test-danit.com"
# }

# variable "route53_zone_id" {
#   default = "Z09677011LE4DBU3U1XY5"
# }

# variable "region" {
#   default = "eu-central-1"
# }

# variable "iam_profile" {
#   default = null
# }

# variable "vpc_id" {
#   default = "vpc-0457fec6187738bb9"
# }

# variable "subnets_ids" {
#   default = [
#     "subnet-03e0be065508a258c",
#     "subnet-09cc42b8da3a8839d",
#     "subnet-020c9c119b0a3d4a8"
#   ]
# }

# variable "tags" {
#   default = {
#     Environment = "test-student13"
#     TfControl   = "true"
#   }
# }

# variable "ingress_dns" {
#   default = "a28a33d5746f44c1b80fe2a48b9da874-130d3978a46f8293.elb.eu-central-1.amazonaws.com"
# }
