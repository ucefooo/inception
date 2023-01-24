FROM debian:buster

COPY ./tools/t.sh t.sh

RUN apt-get update -y && apt-get install wget php7.3-fpm php7.3-mysql curl -y && \
    sed -i 's/.*listen = \/run\/php\/php7.3-fpm.sock*./listen = 9000\n/' /etc/php/7.3/fpm/pool.d/www.conf && \
    service php7.3-fpm start && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && chmod +x t.sh

EXPOSE 9000

ENTRYPOINT [ "sh","./t.sh" ]

CMD [ "php-fpm7.3", "-F"]