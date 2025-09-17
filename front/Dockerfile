# Используем официальный образ nginx
FROM nginx:alpine

# Устанавливаем рабочую директорию
WORKDIR /app


# Копируем исходные файлы
COPY src/ ./

# Копируем nginx конфигурацию
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Копируем статические файлы в nginx
RUN cp -r . /usr/share/nginx/html

# Открываем порт 80
EXPOSE 80

# Запускаем nginx
CMD ["nginx", "-g", "daemon off;"]