FROM debian:latest

COPY incep /mine
RUN apt-get update && apt-get install -y docker.io
RUN apt-get install curl -y
RUN curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN useradd -m myuser
RUN usermod -aG docker myuser
USER myuser

# Run container with user root and priviliged
# docker run -u 0 --privileged -p 80:80 -p 443:443 -it con
