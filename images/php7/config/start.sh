#!/bin/bash
chmod 600 /var/spool/cron/crontabs/root
/usr/bin/php-fpm &
service rsyslog start
service cron start
/bin/bash
