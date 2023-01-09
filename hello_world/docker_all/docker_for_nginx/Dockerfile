FROM debian:stable

RUN apt-get update
RUN apt-get install -y nginx && apt-get install -y systemctl
RUN apt-get install -y openssl
RUN mkdir /certs && touch /certs/nginx_key.pem /certs/nginx_certificate.pem
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /certs/nginx_key.pem -out /certs/nginx_certificate.pem -subj '/CN=localhost'
COPY index.html /html/about/index.html
COPY index2.html /var/www/html/index.nginx-debian.html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 443

CMD ["nginx", "-g" ,"daemon off;"]