# nginx

## build image

```bash
docker build -t nginx-logrotate:alpine .
```

## run 

```bash  
docker run -d --name nginx \
  --net host \
  -e TZ=Asia/Shanghai \
  -v /var/log/nginx:/var/log/nginx \
  -v /nginx/static:/usr/share/nginx/static:ro \
  nginx-logrotate:alpine
```