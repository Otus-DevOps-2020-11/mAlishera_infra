# mAlishera_infra
mAlishera Infra repository
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
