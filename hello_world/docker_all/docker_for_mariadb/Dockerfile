FROM debian:buster

RUN apt-get -y update
RUN apt-get install -y mariadb-server
COPY init.sql /var/www/
RUN sed -i 's/^port.*/port = 3306/' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN RUN sed -i 's/^bind-address.*/bind-address = localhost/' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN service mysql start && mysql -u root < /var/www/init.sql

CMD ["mysqld_safe"]