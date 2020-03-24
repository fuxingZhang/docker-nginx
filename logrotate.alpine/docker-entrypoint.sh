#!/bin/bash
logrotate -v -f /etc/logrotate.d/nginx
nginx -g 'daemon off;'