FROM debian:stable

RUN apt-get update -y && apt-get install wget php-fpm php-mysql
RUN wget https://wordpress.org/latest.tar.gz
RUN tar xzvf latest.tar.gz
RUN mv wordpress /var/www/html

RUN chown -R www-data:www-data /var/www/html/

EXPOSE 9000

CMD [ "php-fpm7.3","-F" ]