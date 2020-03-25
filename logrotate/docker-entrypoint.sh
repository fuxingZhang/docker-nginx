#!/bin/bash
logrotate -v -f /etc/logrotate.conf
nginx -g 'daemon off;'