# nginx
```bash
docker build -t nginx-logrotate-alipine .
```

## run 
```bash  
docker run -d --name nginx \
  -p 80:80  \
  -e TZ=Asia/Shanghai \
  -v /root/nginx:/var/log/nginx \
  nginx-logrotate-alipine
```