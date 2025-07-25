# Задание 5: Управление трафиком внутри кластера Kubernetes

1. Развёртывание сервисов с метками внутри namespace (используем ранее созданный sales)
 ```sh
kubectl run front-end-app --image=nginx --labels role=front-end --expose --port=80 -n sales
kubectl run back-end-api-app --image=nginx --labels role=back-end-api --expose --port=80 -n sales
kubectl run admin-front-end-app --image=nginx --labels role=admin-front-end --expose --port=80 -n sales
kubectl run admin-back-end-api-app --image=nginx --labels role=admin-back-end-api --expose --port=80 -n sales
```

2. Применение сетевых политик
 ```sh
kubectl apply -f ./non-admin-api-allow.yaml -n sales
```
