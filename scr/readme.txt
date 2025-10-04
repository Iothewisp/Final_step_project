1. Create GitHub repo with:

 - test python backend server. Just script which listening on some port and respond 200 on /

 - Dockerfile with everything needed to run this script

 - GitHub action which will build docker image automatically and push to docker hub. Use Github secrets to store your docker hub creds

2. Use terraform code to create EKS cluster (https://gitlab.com/dan-it/groups/devops_soft/-/tree/main/step-final/EKS?ref_type=heads)

 - one node group with one node

 - nginx ingress controller

3. Write terraform code which will install ArgoCD to EKS using helm chart or raw k8s manifest

 - argocd must have dns name in domain: devops1.test-danit.com (change devops1 to your group number) example: argocd.student1.devops1.test-danit.com where student1 is your cluster name.

4. Write K8S manifests to deploy your app from item 1 to EKS.

 - deployment, service, ingress.

 - app must be available by dns name in domain: devops1.test-danit.com (change devops1 to your group number) example: app.student1.devops1.test-danit.com

5. Write ArgoCD app which will deliver code from item 4 to EKS and will update it on new commit.



Формат здачі:1. Код backend сервера (Бажано, щоб код передавав IP адресу пода)

2. Код Dockerfile

3. Код GitHub або GitLab пайплайну (дивлячись, який вибрали для автоматизації, за власним бажанням)

4. Код створення кластера, nginx controller, etc.
 - deployment, service, ingress.

 - app must be available by dns name in domain: devops1.test-danit.com (change devops1 to your group number) example: app.student1.devops1.test-danit.com

5. Write ArgoCD app which will deliver code from item 4 to EKS and will update it on new commit.



Формат здачі:1. Код backend сервера (Бажано, щоб код передавав IP адресу пода)

2. Код Dockerfile

3. Код GitHub або GitLab пайплайну (дивлячись, який вибрали для автоматизації, за власним бажанням)

4. Код створення кластера, nginx controller, etc.

5. Код підняття ArgoCD

6. Код маніфестів

7. Скріни роботи кластера, неймспейсів, роботи ArgoCD, конфірурації ArgoCD, зміни імеджів в Docker Hub, etc.

8. Скріни виконання завдання по пунктах (для захисту проекту)

1. Create GitHub repo with:

 - test python backend server. Just script which listening on some port and respond 200 on /

 - Dockerfile with everything needed to run this script

 - GitHub action which will build docker image automatically and push to docker hub. Use Github secrets to store your docker hub creds

2. Use terraform code to create EKS cluster (https://gitlab.com/dan-it/groups/devops_soft/-/tree/main/step-final/EKS?ref_type=heads)

 - one node group with one node

 - nginx ingress controller

3. Write terraform code which will install ArgoCD to EKS using helm chart or raw k8s manifest

 - argocd must have dns name in domain: devops1.test-danit.com (change devops1 to your group number) example: argocd.student1.devops1.test-danit.com where student1 is your cluster name.

4. Write K8S manifests to deploy your app from item 1 to EKS.

 - deployment, service, ingress.

 - app must be available by dns name in domain: devops1.test-danit.com (change devops1 to your group number) example: app.student1.devops1.test-danit.com

5. Write ArgoCD app which will deliver code from item 4 to EKS and will update it on new commit.



Формат здачі:1. Код backend сервера (Бажано, щоб код передавав IP адресу пода)

2. Код Dockerfile

3. Код GitHub або GitLab пайплайну (дивлячись, який вибрали для автоматизації, за власним бажанням)

4. Код створення кластера, nginx controller, etc.
 - deployment, service, ingress.

 - app must be available by dns name in domain: devops1.test-danit.com (change devops1 to your group number) example: app.student1.devops1.test-danit.com

5. Write ArgoCD app which will deliver code from item 4 to EKS and will update it on new commit.



Формат здачі:1. Код backend сервера (Бажано, щоб код передавав IP адресу пода)

2. Код Dockerfile

3. Код GitHub або GitLab пайплайну (дивлячись, який вибрали для автоматизації, за власним бажанням)

4. Код створення кластера, nginx controller, etc.

5. Код підняття ArgoCD

6. Код маніфестів

7. Скріни роботи кластера, неймспейсів, роботи ArgoCD, конфірурації ArgoCD, зміни імеджів в Docker Hub, etc.

8. Скріни виконання завдання по пунктах (для захисту проекту)


# для захода в кластер с повершлел
#aws eks update-kubeconfig --name danit --region eu-central-1

   kubectl get secret argocd-initial-admin-secret -n argocd `
   -o jsonpath="{.data.password}" | `
   ForEach-Object { [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($_)) }



https://argocd.student13.devops8.test-danit.com


kubectl -n argocd patch configmap argocd-rbac-cm \
  --type merge \
  -p '{"data":{"policy.default":"role:admin"}}'


terraform import aws_iam_policy.secrets_policy arn:aws:iam::123456789012:policy/GetSecrets1
terraform import module.eks-external-dns.aws_iam_policy.this[0] arn:aws:iam::123456789012:policy/external-dns-irsa-external-dns
terraform import module.eks-external-dns.aws_iam_role.this[0] arn:aws:iam::123456789012:role/external-dns-irsa-external-dns
terraform import aws_iam_role.danit-node arn:aws:iam::123456789012:role/danit-eks-node
terraform import aws_iam_role.cluster arn:aws:iam::123456789012:role/danit-eks-role
