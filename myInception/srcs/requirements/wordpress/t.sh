rm -rf /var/www/html/wp-config.php
if [ ! -f /var/www/html/wp-config.php ];
then
    wp config create --dbname=${WORDPRESS_DB_NAME} --dbuser=${WORDPRESS_DB_USER} --dbpass=${WORDPRESS_DB_PASSWORD} --dbhost=${WORDPRESS_DB_HOST} --path=/var/www/html --allow-root --skip-check
    wp core install  --url=${WORDPRESS_ADMIN_URL} --title=${WORDPRESS_TITLE} --admin_name=${WORDPRESS_ADMIN_NAME} --admin_password=${WORDPRESS_ADMIN_PASS} --admin_email=${WORDPRESS_ADMIN_EMAIL} --allow-root --path=/var/www/html
fi
exec "$@"
