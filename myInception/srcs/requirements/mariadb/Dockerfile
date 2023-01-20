FROM debian:buster

COPY init.sql /init.sql
RUN apt-get update -y && apt-get install mariadb-server mariadb-client -y && \
    sed -i 's/.*#port*./port/' /etc/mysql/mariadb.conf.d/50-server.cnf && \
    sed -i 's/.*bind-address*./#bind-address/' /etc/mysql/mariadb.conf.d/50-server.cnf && \
    service mysql start && mysql -u root < init.sql

CMD [ "mysqld" ]