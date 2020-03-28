FROM nginx:alpine

COPY nginx /etc/logrotate.d/
COPY supervisord.conf /etc/

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
  && apk add --no-cache logrotate supervisor \
  && rm -rf /tmp/* /var/cache/apk/* \
  && crontab -l | { cat; echo "0 0 * * * /usr/sbin/logrotate -vf /etc/logrotate.d/nginx"; } | crontab -

ENTRYPOINT ["supervisord"]