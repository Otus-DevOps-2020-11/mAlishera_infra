# mAlishera_infra
mAlishera Infra repository

# Лекция 9 ДЗ

- Ресурсы разнесены на несколько VM
- Конфигурации приложения и БД вынесены в разные модули
- Описаная в модулях инфраструктура использована в двух окружениях (stage, prod)
# Лекция 8 ДЗ

- Установлен Terraform v0.12
- Сконфигурирован и создан образ VM, загружено и запущено приложение

# Лекция 7 ДЗ

- Установлен Packer
- Создан и провалидирован Packer шаблон для описания образа VM
- Сгенерили образ VM по шаблону
- Создали новую VM, при создании к ней добавили диск с прикрепленным образом
- Задеплоили и запустили приложение на созданной VM
- Вынесли в переменные некоторые значения из файла-шаблона, добавили в проект файл с примерами переменных
# Лекция 6 ДЗ

- Установлен YC CLI
- Через yc консоль создан инстанс
```
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/id_rsa.pub \
  --zone ru-central1-a
```
- Через ssh на созданном инстансе установлены ruby и mongoDB, скачано тестовое приложение, запущены база и сервер. Скрипты установки и запуска добавлены в файлы проекта.

Хост и порт развернутого приложения -

testapp_IP = 84.201.158.123
testapp_port = 9292


# Лекция 5 ДЗ

bastion_IP = 84.201.139.137
someinternalhost_IP = 10.129.0.18

## подключения к someinternalhost в одну команду
  - `ssh -At appuser@bastion_IP ssh appuser@someinternalhost_IP`

## OpenVPN сервер

По адресу https://84.201.139.137/
# Файлы

 [setupvpn.sh](setupvpn.sh)

 [cloud-bastion.ovpn](cloud-bastion.ovpn)
