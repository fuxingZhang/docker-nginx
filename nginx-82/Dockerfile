FROM nginx:alpine

COPY nginx /etc/logrotate.d/
COPY docker-entrypoint.sh /usr/local/bin/

RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh \
  && sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
  && apk add --no-cache logrotate

ENTRYPOINT ["sh", "/entrypoint.sh"]