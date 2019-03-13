## Необходимое ПО
1. Docker
2. Composer

## Развертывание

1. перейти в папку проекта
2. composer update
3. docker-compose up -d --build

## Проверка
1. docker exec -it test-crud_fpm_1 bash
2. php artisan migrate
3. localhost:8093/shares