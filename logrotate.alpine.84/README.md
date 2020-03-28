# nginx
```bash
docker build -t nginx-84 .
```

## run 
```bash  
docker run -d --name nginx-84 \
  -p 84:80  \
  -e TZ=Asia/Shanghai \
  -v /root/nginx-84:/var/log/nginx \
  nginx-84
```