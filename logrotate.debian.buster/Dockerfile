FROM nginx

COPY docker-entrypoint.sh /usr/local/bin/
COPY nginx /etc/logrotate.d/

RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh
RUN sed -i "s/deb.debian.org/mirrors.aliyun.com/g" /etc/apt/sources.list \
  && sed -i "s/security.debian.org/mirrors.aliyun.com/g" /etc/apt/sources.list \
  && apt-get -o Acquire::Check-Valid-Until=false update \
  && apt-get install --no-install-recommends --no-install-suggests -y cron logrotate \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]