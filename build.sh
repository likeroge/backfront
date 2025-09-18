#!/bin/bash

print_message() {
    echo "=================================="
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
    echo "=================================="
}

print_message "Остановка и удаление контейнеров"
docker-compose down

print_message "Пересборка образов с обновленным кодом"
docker-compose up -d --build

# Финальное сообщение
print_message "Обновление завершено"
echo "Все контейнеры успешно обновлены и запущены"

# Выход из скрипта
exit 0