FROM nginx:alpine

COPY nginx /etc/logrotate.d/
COPY supervisord.conf /etc/

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
  && apk add --no-cache logrotate supervisor 

ENTRYPOINT ["supervisord"]
