# nginx
```bash
docker build -t nginx-82 .
```

## run 
```bash  
docker run -d --name nginx-82 \
  -p 82:80  \
  -e TZ=Asia/Shanghai \
  -v /root/nginx-82:/var/log/nginx \
  nginx-82
```