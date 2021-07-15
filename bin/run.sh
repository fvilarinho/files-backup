#!/bin/bash

source $BIN_DIR/functions.sh

SETTINGS=$(getSettings)
SERVER_NAME=`echo $SETTINGS | jq -r .serverName.value`
SERVER_PORT=`echo $SETTINGS | jq -r .serverPort.value`
USER=`echo $SETTINGS | jq -r .user.value`
PASSWORD=`echo $SETTINGS | jq -r .password.value`
SOURCE_DIR=`echo $SETTINGS | jq -r .sourceDir.value`
BACKUP_DIR=`echo $SETTINGS | jq -r .backupDir.value`

if [ ! -d "$BACKUP_DIR" ]; then
    echo "Creating the backup directory..."
    
	mkdir -p $BACKUP_DIR
	
	echo "Backup directory created!"
fi

echo "Backing up $SERVER_NAME:$SOURCE_DIR in $BACKUP_DIR..."
rsync -arv -e "sshpass -p $PASSWORD ssh -p $SERVER_PORT -o StrictHostKeyChecking=no" $USER@$SERVER_NAME:$SOURCE_DIR/ $BACKUP_DIR/
echo "Backup done."