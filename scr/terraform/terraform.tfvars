# AWS account config
region = "eu-central-1"

# General for all infrastructure
# This is the name prefix for all infra components
name = "danit"

# Старые варианты VPC и Subnets — закомментированы для истории
# vpc_id = "vpc-06ae62935ffb33e2b"
# subnets_ids = ["subnet-0b27929ad2896d99f", "subnet-0c15a8c6856de7853", "subnet-01a5c422124b1c69e"]

# Ещё один старый вариант
# vpc_id = "vpc-0b3c6a5edabcbc866"
# subnets_ids = ["subnet-09147e169de2bbedd", "subnet-014fb3015844ed798", "subnet-09e5991259d455b0f"]

# Активный VPC и Subnets
vpc_id = "vpc-0457fec6187738bb9"
subnets_ids = [
  "subnet-03e0be065508a258c",
  "subnet-09cc42b8da3a8839d",
  "subnet-020c9c119b0a3d4a8"
]

# Теги для всех ресурсов
tags = {
  Environment = "test-studen1"
  TfControl   = "true"
}

# DNS зона и её ID
# zone_name = "devops7.test-danit.com"
zone_name        = "devops8.test-danit.com"
route53_zone_id  = "Z09677011LE4DBU3U1XY5"




# для захода в кластер с повершлел
#aws eks update-kubeconfig --name danit --region eu-central-1

#kubectl get secret argocd-initial-admin-secret -n argocd `
#   -o jsonpath="{.data.password}" | `
#   ForEach-Object { [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($_)) }
