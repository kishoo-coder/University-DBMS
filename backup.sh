#!/bin/bash

SOURCE_DIR="/E/oracle/app/oracle"
BACKUP_DIR="/D/backup"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)

tar cvf "${BACKUP_DIR}/backup_${TIMESTAMP}.tar" -C "${SOURCE_DIR}" .

echo "Backup completed. Archive stored in ${BACKUP_DIR}/backup_${TIMESTAMP}.tar"