# Dockerfile
cat <<EOF > Dockerfile
FROM php:8.1-apache
COPY . /var/www/html/
EOF

# docker-compose.yml
cat <<EOF > docker-compose.yml
version: '3.1'
services:
  web:
    build: .
    ports:
      - '81:80'
    volumes:
      - .:/var/www/html
  db:
    image: mariadb
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: sistemaweb
    ports:
      - '3306:3306'
EOF
