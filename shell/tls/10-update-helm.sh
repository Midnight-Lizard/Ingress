kubectl create serviceaccount tiller --namespace=kube-system;

kubectl create clusterrolebinding tiller-admin --serviceaccount=kube-system:tiller --clus
terrole=cluster-admin;

helm init --upgrade --service-account=tiller;

helm repo update;