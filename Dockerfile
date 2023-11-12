FROM php:8-cli

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www

# Копіюємо файли з контексту будівництва в контейнер
COPY application/ /var/www/application/
COPY public/ /var/www/html/

EXPOSE 8000

CMD ["php", "-S", "0.0.0.0:8000", "/var/www/html/index.php"]

