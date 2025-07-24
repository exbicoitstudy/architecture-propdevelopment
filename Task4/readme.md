# Задание 4: Защита доступа к кластеру Kubernetes

[Список ролей](roles.md)

1. Запуск скрипта для создания пользователей
 ```sh
./create-users.sh
```

2. Создание ролей
 ```sh
kubectl apply -f ./roles.yaml
```

3. Связь пользователей с ролями
 ```sh
kubectl apply -f ./rolebindings.yaml
```