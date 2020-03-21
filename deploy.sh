docker build -t aeroslon/multi-client:latest -t aeroslon/multi-client:$GIT_SHA -f ./client/Dockerfile ./client
docker build -t aeroslon/multi-server:latest -t aeroslon/multi-server:$GIT_SHA -f ./server/Dockerfile ./server
docker build -t aeroslon/multi-worker:latest -t aeroslon/multi-worker:$GIT_SHA -f ./worker/Dockerfile ./worker

docker push aeroslon/multi-client:latest
docker push aeroslon/multi-client:$GIT_SHA

docker push aeroslon/multi-server:latest
docker push aeroslon/multi-server:$GIT_SHA

docker push aeroslon/multi-worker:latest
docker push aeroslon/multi-worker:$GIT_SHA

kubectl apply -f k8s

kubectl set image deployments/client-deployment client=aeroslon/multi-client:$GIT_SHA
kubectl set image deployments/server-deployment server=aeroslon/multi-server:$GIT_SHA
kubectl set image deployments/worker-deployment worker=aeroslon/multi-worker:$GIT_SHA
