# nginx
```bash
docker build -t nginx-85 .
```

## run 
```bash  
docker run -d --name nginx-85 \
  -p 85:80  \
  -e TZ=Asia/Shanghai \
  -v /root/nginx-85:/var/log/nginx \
  nginx-85
```