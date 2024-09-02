# Usa una imagen base de MySQL
FROM mysql:8.0

# Copia el archivo de respaldo al contenedor
COPY Backup-Database-21-08-24/dump-ecommerce_api_prod01-202408291545.sql /docker-entrypoint-initdb.d/

# Configura el contenedor para usar una contraseña root
ENV MYSQL_ROOT_PASSWORD=passDB123

EXPOSE 3306

