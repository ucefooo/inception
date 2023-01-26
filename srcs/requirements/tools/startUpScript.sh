if [ ! -d /home/youssama/data/ ]; then
    mkdir -p /home/youssama/data/wordpress/
    mkdir -p /home/youssama/data/adminer/
    mkdir -p /home/youssama/data/site/
    mkdir -p /home/youssama/data/dataBase/
fi

chmod -R 777 /home/youssama/data/*

if [ -f /var/run/docker.sock ]; then
    chmod 777 /var/run/docker.sock
fi
