# module "eks-external-dns" {
#   #source                           = "lablabs/eks-external-dns/aws"
#   source                           = "./modules/eks-external-dns"
#   #version                          = "1.2.0"
#   cluster_identity_oidc_issuer     = aws_eks_cluster.danit.identity.0.oidc.0.issuer
#   cluster_identity_oidc_issuer_arn = module.oidc-provider-data.arn
# }

# Оце додати у модуль екстернал-днс і буде працювати:
#   values = yamlencode({
#     "image" : {
#       "registry" : "registry.k8s.io"
#       "repository" : "external-dns/external-dns"
#       "tag" : "v0.14.2"
#       "pullPolicy" : "IfNotPresent"
#     }
#   })
module "eks-external-dns" {
  # source                          = "lablabs/eks-external-dns/aws"
  source                           = "./modules/eks-external-dns"
  # version                         = "1.2.0"

  cluster_identity_oidc_issuer     = aws_eks_cluster.danit.identity[0].oidc[0].issuer
  cluster_identity_oidc_issuer_arn = module.oidc-provider-data.arn

  values = yamlencode({
    image = {
      registry   = "registry.k8s.io"
      repository = "external-dns/external-dns"
      tag        = "v0.14.2"
      pullPolicy = "IfNotPresent"
    }
  })
}
