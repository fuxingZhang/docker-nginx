FROM nginx

COPY nginx /etc/logrotate.d
COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh
RUN sed -i "s/deb.debian.org/mirrors.aliyun.com/g" /etc/apt/sources.list \
  && sed -i "s/security.debian.org/mirrors.aliyun.com/g" /etc/apt/sources.list \
  && apt-get clean \
  && apt-get update \
  && apt-get install --no-install-recommends --no-install-suggests -y logrotate

EXPOSE 80

STOPSIGNAL SIGTERM

ENTRYPOINT ["/entrypoint.sh"]