if [ ! -d /home/youssama/data/ ]; then
    mkdir -p /home/youssama/data/
fi

chmod 777 /home/youssama/data/

if [ -f /var/run/docker.sock]; then
    chmod 777 /var/run/docker.sock
fi