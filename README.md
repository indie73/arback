# Инструкция

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

6. Настроить nginx файл в соответствии с требованиями на предприятии и перезагрузить его командой
```
sudo service nginx restart
```


## Документация на API

Она описана в формате API Blueprint в файле `doc.apib`.
Для просмотра результата нужна программа `aglio`.

Команда для рендера динамической документации
```
aglio -s -i doc.apib
```

Команда для генерации статической документации
```
aglio -i doc.apib -o doc.html
```
