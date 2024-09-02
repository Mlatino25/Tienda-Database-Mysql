# Usa la imagen base de MySQL
FROM mysql:5.7

# Copia el archivo de respaldo al directorio de inicialización de MySQL
COPY Backup-Database-21-08-24/dump-ecommerce_api_prod01-202408291545.sql /docker-entrypoint-initdb.d/

# Expone el puerto por defecto de MySQL
EXPOSE 3306

