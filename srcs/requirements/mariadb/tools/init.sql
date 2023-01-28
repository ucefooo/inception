CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'youssama'@'%' IDENTIFIED BY 'youssef00';
GRANT ALL PRIVILEGES ON wordpress.* to 'youssama'@'%' IDENTIFIED BY 'youssef00';
UPDATE mysql.user SET authentication_string=PASSWORD('youssef'), plugin='mysql_native_password' WHERE User='root';
FLUSH PRIVILEGES;