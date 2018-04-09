## What's included in this image?
This image is based on the [official WordPress image](https://hub.docker.com/_/wordpress/). It increases the memory limit, maximum upload file size and installs php extensions.

### PHP Extensions installed
* PHP Zip Archive

## Supported tags
Currently the following tags can be used. The image builds on the WordPress image with the same tag.

* `php7.2-apache` `latest`
* `php7.1-apache`

## How to use this image
The image can be used identically to the official WordPress image. You can take a look at their description or use a **docker-compose.yml** similar like this:

```yml
version: '3'

services:
  wordpress:
    image: plocek/wordpress:php7.1-apache
    restart: always
    ports:
      - 80:80
    volumes:
      - ./wp-content/:/var/www/html/wp-content
    environment:
      WORDPRESS_DB_HOST: mariadb
      WORDPRESS_DB_PASSWORD: example

  mariadb:
    image: mariadb
    restart: always
    volumes: ./db-data:/var/lib/mysql
    environment:
      MYSQL_ROOT_PASSWORD: example

```