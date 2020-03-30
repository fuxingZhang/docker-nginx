# nginx
Nginx image with logrotate based on nginx:debian:buster-slim

<!-- 
## build
```bash
docker build -t zhangfuxing/nginx-logrotate .
```

## push
```bash
$ docker push zhangfuxing/nginx-logrotate
``` 
-->

## pull
```bash
$ docker pull zhangfuxing/nginx-logrotate
``` 

## run 
```bash  
docker run -d --name nginx \
  --net host \
  -e TZ=Asia/Shanghai \
  -v /config/nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v /var/log/nginx:/var/log/nginx \
  -v /nginx/static:/usr/share/nginx/static:ro \
  zhangfuxing/nginx-logrotate
```