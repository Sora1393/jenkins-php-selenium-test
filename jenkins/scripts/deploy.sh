#!/usr/bin/env sh

set -x

# Assuming C:\jenkins-php-selenium-test\src exists on your host machine
docker run -d -p 80:80 --name my-apache-php-app -v /c/jenkins-php-selenium-test/src:/var/www/html php:7.2-apache
sleep 6
docker ps
docker logs my-apache-php-app


set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'
