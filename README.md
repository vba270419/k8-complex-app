#### Configure secrets
To create a secret the following commands needed to be executed:

```shell script
kubectl create secret generic pgpassword --from-literal PGPASSWORD=<somepassword>
```

#### Configure Ingress
https://kubernetes.github.io/ingress-nginx/deploy/
