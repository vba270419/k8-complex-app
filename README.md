#### Configure secrets
To create a secret the following commands needed to be executed:

```shell script
kubectl create secret generic pgpassword --from-literal PGPASSWORD=<somepassword>
```

#### Install Helm 3
```shell script
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh
```

#### Configure Ingress
https://kubernetes.github.io/ingress-nginx/deploy/

##### Install Ingress using Helm 3 in GCP
```shell script
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm install my-nginx stable/nginx-ingress --set rbac.create=true 
```
