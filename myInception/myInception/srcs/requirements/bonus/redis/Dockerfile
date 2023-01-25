FROM debian:buster


RUN apt-get update && apt-get install -y redis-server && \
    echo "bind 0.0.0.0" >> /etc/redis/redis.conf && mkdir -p /var/redis && chmod 777 /var/redis

EXPOSE 6379

ENTRYPOINT [ "redis-server", "--protected-mode no" ]