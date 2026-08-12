#!/bin/bash
TIME=$(date +%Y-%m-%d-%H-%M-%S)


SOURCE_DIR="/profiles/important-data"
BACKUP_DIR="/profiles/main-backup"


tar -czf $BACKUP_DIR/backup_$TIME.tar.gz $SOURCE_DIR 

find /profiles/main-backup -type f -name "*.tar.gz" -mtime +7 -delete

echo "I am done man bla bla bla"
