#!/bin/bash

openssl genrsa -out admin1.key 2048
openssl req -new -key admin1.key -out admin1.csr -subj "/CN=admin1"
openssl x509 -req -in admin1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key -CAcreateserial -out admin1.crt -days 365
kubectl config set-credentials admin1 --client-certificate=admin1.crt --client-key=admin1.key

openssl genrsa -out devops1.key 2048
openssl req -new -key devops1.key -out devops1.csr -subj "/CN=devops1"
openssl x509 -req -in devops1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key -CAcreateserial -out devops1.crt -days 365
kubectl config set-credentials devops1 --client-certificate=devops1.crt --client-key=devops1.key

openssl genrsa -out developer1.key 2048
openssl req -new -key developer1.key -out developer1.csr -subj "/CN=developer1"
openssl x509 -req -in developer1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key -CAcreateserial -out developer1.crt -days 365
kubectl config set-credentials developer1 --client-certificate=developer1.crt --client-key=developer1.key

openssl genrsa -out ib1.key 2048
openssl req -new -key ib1.key -out ib1.csr -subj "/CN=ib1"
openssl x509 -req -in ib1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key -CAcreateserial -out ib1.crt -days 365
kubectl config set-credentials ib1 --client-certificate=ib1.crt --client-key=ib1.key

# создадим один namespace для примера, чтобы в дальнейшем использовать для ролей
kubectl get namespace sales >/dev/null 2>&1 || kubectl create namespace sales