# Инструкция ARIS

## Установка

1. Необходима ОС Ubuntu минимальной версии 16.04, ruby 2.5.1 и БД postgresql 10
2. Склонировать проекты https://github.com/indie73/arback и https://github.com/indie73/arfront
3. В проекте backend-а arback выполнить команду `bundle`
4. Настроить подключение к БД в файле `config/database.yml`
5. Создать БД вручную или с помощью команды
```
bundle e rake db:create
```

6. Выполнить миграции к БД с помощью команды
```
bundle e rake db:migrate
```

7. Запустить сервис командой
```
rails s
```

## Деплой

1. Для деплоя на сервере нужны те же библиотеки что и при локальном использовании, а так же `nginx`.
2. С помощью команды
```
EDITOR=vim rails credentials:edit
```

Нужно указать следующие данные для подключения к БД на сервере

```
host:
port:
database:
username:
password:
```

3. Обновить данные сервера в файле `config/deploy.rb`

4. При первом деплое выполнить команду
```
cap production deploy:initial
```

5. Загрузить ключ `config/master.key` для работы с секретными файлами на сервер в папку `/home/username/apps/arback/shared/config`

6. Выполнять следующую команду для деплоя (так же выполнять ее в будущем при обновлениях ПО)

```
cap production deploy
```

6. Настроить nginx файл в соответствии с требованиями на предприятии (например вариантом ниже) и перезагрузить nginx

```
upstream arback_app {
    server unix:///home/username/apps/arback/shared/tmp/sockets/arback-puma.sock;
}

server {
        listen 80;
        listen [::]:80;
        
        server_name indieteam.online;
        
        location /api/v1 { 
                proxy_pass http://arback_app;
        }
        
        location / { 
                root /home/dmitry/apps/arback/current/public;
                try_files $uri $uri/ /index.html;
        }
}
```

```
sudo service nginx restart
```


## Документация на API

Документацию к последней версии продукта можно посмотреть по адресу http://indieteam.online/doc.html

Она описана в формате API Blueprint в файле `doc.apib`.
Для просмотра результата локально, нужна программа `aglio`.

Команда для рендера динамической документации
```
aglio -s -i doc.apib
```

Команда для генерации статической документации
```
aglio -i doc.apib -o public/doc.html
```

## Поддержка

Для упрощения поддержки API используется `fitting`
Команда проверки корретности реализации роутов
```
bundle e rake fitting:documentation_responses[xs]
```
