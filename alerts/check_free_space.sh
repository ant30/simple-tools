#!/bin/bash

# Minimum free space in bytes
MIN_SPACE=700000
MAIL_FROM="system@$HOSTNAME"
MAIL_TO="yourmail@example.com"
MAIL_SUBJECT="[WARNING][$HOSTNAME] Very low disk space"

RESUME=$(df -x tmpfs  | grep " /$" | awk '{ print $4 " " $1 }'| sort -nsz)


MIN_PARTITION_SPACE=$(echo $RESUME | tail -n 1 | awk '{ print $1 }')


if [[ $MIN_SPACE -gt $MIN_PARTITION_SPACE ]]; then
   /bin/mail -r "$MAIL_FROM" -s "$MAIL_SUBJECT" $MAIL_TO << EOF
Hi, 

I have bad news for you. Is this file system disk space usage correct?

$(df -h)

Maybe you want to fix this before a system crash.

EOF

fi
