## What's included in this image?
This image is based on the [official WordPress image](https://hub.docker.com/_/wordpress/). It increases the memory limit, maximum upload file size and installs php extensions.

### PHP Extensions installed
* PHP Zip Archive

## Supported tags
Currently the following tags can be used. The image builds on the WordPress image with the same tag.

* `php7.2-apache` `latest`
* `php7.1-apache`

## How to use this image
The image can be used identically to the official WordPress image. However, I recommend you take a look at my **docker-compose.yml** provided, and start your containers via ...

```bash
docker-compose up -d
```