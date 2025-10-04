#v1 rbochaya
# resource "helm_release" "argocd" {
#   name             = "argocd"
#   namespace        = "argocd"
#   repository       = "https://argoproj.github.io/argo-helm"
#   chart            = "argo-cd"
#   version          = "5.46.5"
#   create_namespace = true

#   set {
#     name  = "server.ingress.enabled"
#     value = "true"
#   }

#   set {
#     name  = "server.ingress.ingressClassName"
#     value = "nginx"
#   }

#   set {
#     name  = "server.ingress.hosts[0]"
#     value = "argocd.student13.devops8.test-danit.com"
#   }

#   set {
#     name  = "server.service.type"
#     value = "ClusterIP"
#   }

#   set {
#     name  = "server.config.url"
#     value = "http://argocd.student13.devops8.test-danit.com"
#   }

#   set {
#     name  = "server.extraArgs[0]"
#     value = "--insecure"
#   }
# }



###v2 nerabochaya
# resource "helm_release" "argocd" {
#   name             = "argocd"
#   namespace        = "argocd"
#   repository       = "https://argoproj.github.io/argo-helm"
#   chart            = "argo-cd"
#   version          = "5.46.7"
#   create_namespace = true

#   set {
#     name  = "server.ingress.enabled"
#     value = "true"
#   }

#   set {
#     name  = "server.ingress.ingressClassName"
#     value = "nginx"
#   }

#   set {
#     name  = "server.ingress.hosts[0]"
#     value = "argocd.${local.domain_name}"
#   }

#   set {
#     name  = "server.ingress.tls[0].hosts[0]"
#     value = "argocd.${local.domain_name}"
#   }

#   set {
#     name  = "server.ingress.tls[0].secretName"
#     value = "argocd-tls"
#   }

#   set {
#     name  = "server.service.type"
#     value = "ClusterIP"
#   }

#   set {
#     name  = "server.config.url"
#     value = "https://argocd.${local.domain_name}"
#   }

#   set {
#     name  = "server.extraArgs[0]"
#     value = "--insecure"
#   }

#   depends_on = [helm_release.nginx_ingress]
# }

# resource "aws_route53_record" "argocd_dns" {
#   zone_id = var.route53_zone_id
#   name    = "argocd.${var.name}.${var.zone_name}"
#   type    = "CNAME"
#   ttl     = 300
#   records = [var.ingress_dns]

#   depends_on = [helm_release.argocd]
# }


###v3 test

# resource "helm_release" "argocd" {
#   name             = "argocd"
#   namespace        = "argocd"
#   repository       = "https://argoproj.github.io/argo-helm"
#   chart            = "argo-cd"
#   version          = "5.46.5"
#   create_namespace = true

#   set {
#     name  = "server.ingress.enabled"
#     value = "true"
#   }

#   set {
#     name  = "server.ingress.ingressClassName"
#     value = "nginx"
#   }

#   set {
#     name  = "server.ingress.hosts[0]"
#     value = "argocd.student13.devops8.test-danit.com"
#   }

#   # 🔥 TLS: включаем HTTPS
#   set {
#     name  = "server.ingress.tls[0].hosts[0]"
#     value = "argocd.student13.devops8.test-danit.com"
#   }

#   set {
#     name  = "server.ingress.tls[0].secretName"
#     value = "argocd-tls"
#   }

#   set {
#     name  = "server.service.type"
#     value = "ClusterIP"
#   }

#   # 🔥 TLS: меняем URL на https
#   set {
#     name  = "server.config.url"
#     value = "https://argocd.student13.devops8.test-danit.com"
#   }

#   set {
#     name  = "server.extraArgs[0]"
#     value = "--insecure"
#   }

#   depends_on = [helm_release.nginx_ingress]
  
  
# }



####V 4
# # ───────────────────────────────────────────────────────────────
# # 🚀 Установка ArgoCD через Helm
# # ───────────────────────────────────────────────────────────────
# resource "helm_release" "argocd" {
#   name             = "argocd"
#   namespace        = "argocd"
#   repository       = "https://argoproj.github.io/argo-helm"
#   chart            = "argo-cd"
#   version          = "5.46.5"
#   create_namespace = true

#   set {
#     name  = "server.ingress.enabled"
#     value = "true"
#   }

#   set {
#     name  = "server.ingress.ingressClassName"
#     value = "nginx"
#   }

#   set {
#     name  = "server.ingress.hosts[0]"
#     value = "argocd.student13.devops8.test-danit.com"
#   }

#   # 🔐 TLS: включаем HTTPS
#   set {
#     name  = "server.ingress.tls[0].hosts[0]"
#     value = "argocd.student13.devops8.test-danit.com"
#   }

#   set {
#     name  = "server.ingress.tls[0].secretName"
#     value = "argocd-tls"
#   }

#   set {
#     name  = "server.service.type"
#     value = "ClusterIP"
#   }

#   # 🔐 TLS: меняем URL на https
#   set {
#     name  = "server.config.url"
#     value = "https://argocd.student13.devops8.test-danit.com"
#   }

#   # ⚠️ Отключаем TLS проверку внутри ArgoCD (если нужно)
#   set {
#     name  = "server.extraArgs[0]"
#     value = "--insecure"
#   }

#   depends_on = [helm_release.nginx_ingress]
# }

# # ───────────────────────────────────────────────────────────────
# # 🌐 DNS-запись в Route53 для ArgoCD
# # ───────────────────────────────────────────────────────────────
# resource "aws_route53_record" "argocd_dns" {
#   zone_id = "Z09677011LE4DBU3U1XY5" # ← Hosted Zone ID для devops8.test-danit.com
#   name    = "argocd.student13.devops8.test-danit.com"
#   type    = "A"

#   alias {
#     name                   = "a74ad75d5303a49e8b19121ca6205ff9-6d3525f93351ce38.elb.eu-central-1.amazonaws.com"
#     zone_id                = "Z215JYRZR1TBD5" # ELB zone ID для eu-central-1
#     evaluate_target_health = true
#   }

#   depends_on = [helm_release.argocd]
# }

# ######v5 
# # ───────────────────────────────────────────────────────────────
# # 🚀 Установка ArgoCD через Helm
# # ───────────────────────────────────────────────────────────────
# resource "helm_release" "argocd" {
#   name             = "argocd"
#   namespace        = "argocd"
#   repository       = "https://argoproj.github.io/argo-helm"
#   chart            = "argo-cd"
#   version          = "5.46.5"
#   create_namespace = true

#   set {
#     name  = "server.ingress.enabled"
#     value = "true"
#   }

#   set {
#     name  = "server.ingress.ingressClassName"
#     value = "nginx"
#   }

#   set {
#     name  = "server.ingress.hosts[0]"
#     value = "argocd.student13.devops8.test-danit.com"
#   }

#   # 🔐 TLS: включаем HTTPS
#   set {
#     name  = "server.ingress.tls[0].hosts[0]"
#     value = "argocd.student13.devops8.test-danit.com"
#   }

#   set {
#     name  = "server.ingress.tls[0].secretName"
#     value = "argocd-tls"
#   }

#   set {
#     name  = "server.service.type"
#     value = "ClusterIP"
#   }

#   # 🔐 TLS: меняем URL на https
#   set {
#     name  = "server.config.url"
#     value = "https://argocd.student13.devops8.test-danit.com"
#   }

#   # ⚠️ Отключаем TLS проверку внутри ArgoCD (если нужно)
#   set {
#     name  = "server.extraArgs[0]"
#     value = "--insecure"
#   }

#   depends_on = [helm_release.nginx_ingress]
# }

# # ───────────────────────────────────────────────────────────────
# # 📦 Получение zone ID для ELB (автоматически)
# # ───────────────────────────────────────────────────────────────
# data "aws_elb_hosted_zone_id" "main" {}

# # ───────────────────────────────────────────────────────────────
# # 🌐 DNS-запись в Route53 для ArgoCD
# # ───────────────────────────────────────────────────────────────
# resource "aws_route53_record" "argocd_dns" {
#   zone_id = "Z09677011LE4DBU3U1XY5" # ← Hosted Zone ID для devops8.test-danit.com

#   name    = "argocd.student13.devops8.test-danit.com"
#   type    = "A"

#   alias {
#     name                   = "a74ad75d5303a49e8b19121ca6205ff9-6d3525f93351ce38.elb.eu-central-1.amazonaws.com"
#     zone_id                = data.aws_elb_hosted_zone_id.main.id
#     evaluate_target_health = true
#   }

#   depends_on = [helm_release.argocd]


# resource "aws_route53_record" "argocd_dns" {
#   zone_id = "Z09677011LE4DBU3U1XY5" # ← Hosted Zone ID для devops8.test-danit.com

#   name    = "argocd.student13.devops8.test-danit.com"
#   type    = "A"

#   alias {
#     name                   = "a74ad75d5303a49e8b19121ca6205ff9-6d3525f93351ce38.elb.eu-central-1.amazonaws.com"
#     zone_id                = "Z215JYRZR1TBD5" # ← ELB zone ID для eu-central-1
#     evaluate_target_health = true
#   }
# }


# }


#### v6
resource "helm_release" "argocd" {
  name             = "argocd"
  namespace        = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = "5.46.5"
  create_namespace = true

  set {
    name  = "server.ingress.enabled"
    value = "true"
  }

  set {
    name  = "server.ingress.ingressClassName"
    value = "nginx"
  }

  set {
    name  = "server.ingress.hosts[0]"
    value = "argocd.student13.devops8.test-danit.com"
  }

  # ❌ Удаляем TLS-секцию — ACM работает на ELB
  # ❌ Удаляем server.config.url — чтобы избежать редиректов

  set {
    name  = "server.service.type"
    value = "ClusterIP"
  }

  # ✅ Оставляем --insecure, чтобы ArgoCD не требовал TLS внутри кластера
  set {
    name  = "server.extraArgs[0]"
    value = "--insecure"
  }

  depends_on = [helm_release.nginx_ingress]
}
