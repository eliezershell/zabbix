CREATE DATABASE base-zabbix CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
CREATE USER 'user-zabbix'@'localhost' IDENTIFIED BY 'pass-zabbix';
GRANT ALL PRIVILEGES ON base-zabbix.* TO 'user-zabbix'@'localhost';
SET GLOBAL log_bin_trust_function_creators = 1;
FLUSH PRIVILEGES;
