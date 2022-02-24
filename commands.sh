minikube config set cpus 3  
minikube config set memory 9000  
minikube config view vm-driver




kubectl create namespace airflow

helm repo add apache-airflow https://airflow.apache.org

helm repo update

helm install airflow apache-airflow/airflow --namespace airflow --debug --timeout 10m0s

kubectl get pods -n airflow

helm show values apache-airflow/airflow > values.yml

kubectl port-forward svc/airflow-webserver 8080:8080 -n airflow

https://github.com/marclamberti/webinar-airflow-chart.git

kubectl apply -f variables.yaml

helm upgrade --install airflow apache-airflow/airflow --namespace airflow --debug -f values.yaml


minikube image load airflow-custom:1.0.0