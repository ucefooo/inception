wp config create --dbname="mydb" --dbuser="user" --dbpass="password" --dbhost="mariadb" --path=/var/www/html --allow-root --skip-check
wp core install  --url="https://localhost/" --title="ince" --admin_name="admin" --admin_password="SANDala100?" --admin_email="you@gmail.com" --allow-root --path=/var/www/html
exec "$@"
