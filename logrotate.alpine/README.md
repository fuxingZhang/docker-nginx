# nginx

## build
```bash
docker build -t zhangfuxing/nginx-logrotate-alpine .
```

## push
```bash
$ docker push zhangfuxing/nginx-logrotate-alpine
```

## run 
```bash  
docker run -d --name nginx \
  --net host \
  -e TZ=Asia/Shanghai \
  -v /config/nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v /var/log/nginx:/var/log/nginx \
  -v /nginx/static:/usr/share/nginx/static:ro \
  zhangfuxing/nginx-logrotate-alpine
```