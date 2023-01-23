rm -rf /var/www/html/wp-config.php
if [ ! -f /var/www/html/wp-config.php ];
then
    mkdir -p /var/www/html/
    chmod 777 /var/www/html/
    wp core download --path=/var/www/html/ --allow-root --force
    chown -R www-data:www-data /var/www/html/
    wp config create --dbname=${WORDPRESS_DB_NAME} --dbuser=${WORDPRESS_DB_USER} --dbpass=${WORDPRESS_DB_PASSWORD} --dbhost=${WORDPRESS_DB_HOST} --path=/var/www/html --allow-root --skip-check
    wp core install  --url=${WORDPRESS_ADMIN_URL} --title=${WORDPRESS_TITLE} --admin_name=${WORDPRESS_ADMIN_NAME} --admin_password=${WORDPRESS_ADMIN_PASS} --admin_email=${WORDPRESS_ADMIN_EMAIL} --allow-root --path=/var/www/html
    wp user create ${WORD_NEW_USER} ${WORD_NEW_EMAIL} --user_pass=${WORD_NEW_PASS} --allow-root --path=/var/www/html/
    wp config set WP_REDIS_HOST redis --allow-root --path=/var/www/html/
    wp config set WP_REDIS_PORT 6379 --allow-root --path=/var/www/html/
    wp plugin install redis-cache --allow-root --path=/var/www/html/
    wp plugin activate redis-cache --allow-root --path=/var/www/html/
    wp search-replace localhost youssama.42.fr --dry-run --allow-root --path=/var/www/html/
    wp cache flush --allow-root --path=/var/www/html
fi


wp redis enable --force --allow-root --path=/var/www/html
exec "$@"
