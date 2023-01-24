FROM debian:buster

RUN apt-get update -y && apt-get install wget -y && \
    wget https://github.com/bcicen/ctop/releases/download/v0.7.1/ctop-0.7.1-linux-amd64 -O /usr/local/bin/ctop \
    && chmod +x /usr/local/bin/ctop

CMD [ "ctop" ]
