# Source: https://gist.github.com/627fcfbfbc17a683a70210947e02eaa3

##########
# Kaniko #
##########

open https://github.com/aalillou/kaniko-demo

# Fork it

# Replace `[...]` with the GitHub organization or the username
export GH_ORG=aalillou

git clone https://github.com/$GH_ORG/kaniko-demo.git

cd kaniko-demo

ls -1

cat Dockerfile

docker image build \
    --tag devops-toolkit \
    .

minikube start

cat docker.yaml

kubectl apply \
    --filename docker.yaml

kubectl wait \
    --for condition=containersready \
    pod docker

kubectl exec -it docker -- sh

apk add -U git

git clone https://github.com/aalillou/kaniko-demo.git

cd kaniko-demo

docker image build \
    --tag devops-toolkit \
    .

exit

kubectl delete --filename docker.yaml

cat docker-socket.yaml

kubectl apply --filename docker-socket.yaml
    
kubectl wait \
    --for condition=containersready \
    pod docker

kubectl exec -it docker -- sh

apk add -U git

git clone https://github.com/aalillou/kaniko-demo.git

cd kaniko-demo

docker image build \
    --tag devops-toolkit \
    .

exit

kubectl delete --filename docker-socket.yaml

cat kaniko-git.yaml

# Open kaniko-git.yaml
# Replace `vfarcic` in `--context` and `--destination` with GitHub and Docker Hub users
# Save

git add .

git commit -m "Changed the registry"

git push

export REGISTRY_SERVER=https://index.docker.io/v1/

# Replace `[...]` with the registry username
export REGISTRY_USER=[...]

# Replace `[...]` with the registry password
export REGISTRY_PASS=[...]

# Replace `[...]` with the registry email
export REGISTRY_EMAIL=[...]

kubectl create secret \
    docker-registry regcred \
    --docker-server=$REGISTRY_SERVER \
    --docker-username=$REGISTRY_USER \
    --docker-password=$REGISTRY_PASS \
    --docker-email=$REGISTRY_EMAIL

kubectl apply -f kaniko-git.yaml

kubectl apply -f kaniko-kaniko.yaml
    
kubectl wait \
    --for condition=containersready \
    pod kaniko

kubectl logs kaniko --follow

kubectl delete --filename kaniko-git.yaml

# Open it in browser

cat kaniko-dir.yaml

minikube delete
