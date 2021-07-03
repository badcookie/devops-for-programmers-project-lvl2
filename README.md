# Деплой Docker-приложения с помощью Ansible

## Зависимости
* ansible 2.10.10

## Предварительные требования
Создайте файл `vault-password` в корне проекта с паролем, с помощью которого будут шифроваться данные

## CLI
* `make encrypt name=<variable_name>`

  шифрует значение переменной `name`

* `make install`

  устанавливает зависимости для ansible

* `make deploy inventory=<path_to_inventory_file>`
  
  выполняет скрипт выкладки приложения и конфигурации серверов из файла `inventory`
