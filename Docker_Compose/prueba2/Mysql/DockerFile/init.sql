
GRANT REPLICATION SLAVE ON *.* TO 'esclavo'@'%' IDENTIFIED BY 'esclavo';

FLUSH PRIVILEGES;

FLUSH TABLES;

FLUSH TABLES WITH READ LOCK;

UNLOCK TABLES;
