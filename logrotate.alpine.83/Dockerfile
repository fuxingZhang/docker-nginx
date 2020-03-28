FROM nginx:alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
  && apk add --no-cache logrotate supervisor \
  && rm -rf /tmp/* /var/cache/apk/* \
  && touch /var/log/messages \
  && crontab -l | { cat; echo "0 0 * * * /usr/sbin/logrotate -vf /opt/logrotate/nginx"; } | crontab -

ADD supervisord.conf /etc/supervisord.conf
ADD nginx /opt/logrotate/nginx

ENTRYPOINT ["supervisord"]
