#!/bin/bash

$BIN_DIR/child-install.sh

CRONTAB=`echo "$SETTINGS" | jq -r .crontab.value`

echo "$CRONTAB $BIN_DIR/run.sh" > /etc/crontabs/root

crond