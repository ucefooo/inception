FROM debian:buster

RUN apt-get update -y && apt-get install php7.3-fpm php7.3-mysql wget -y && \
    sed -i 's/.*listen = \/run\/php\/php7.3-fpm.sock*./listen = 9001\n/' /etc/php/7.3/fpm/pool.d/www.conf && \
    wget https://www.adminer.org/latest.php -O adminer.php && service php7.3-fpm start && \
    mkdir -p /var/www/adminer/ && mv adminer.php /var/www/adminer/adminer.php && \
    chown -R www-data:www-data /var/www/adminer/

EXPOSE 9001

CMD [ "php-fpm7.3","-F"]



# FROM debian:buster

# RUN apt-get update -y && apt-get install php7.3-mysql wget -y && \
#     wget https://www.adminer.org/latest.php -O adminer.php

# CMD [ "php7.3","-S","0.0.0.0:500","/adminer.php" ]