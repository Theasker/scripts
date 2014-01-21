#!/bin/sh
#Script para copia de seguridad de la base de datos de MySQL

mysqldump --add-drop-table -h localhost -u root > /backup/mysql/backup.sql

