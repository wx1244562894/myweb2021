DROP DATABASE myweb;
CREATE DATABASE myweb default character set utf8;
GRANT ALL PRIVILEGES ON myweb.* TO 'myweb'@'localhost' IDENTIFIED BY 'Myweb@2021' WITH GRANT OPTION;
