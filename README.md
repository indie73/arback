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
