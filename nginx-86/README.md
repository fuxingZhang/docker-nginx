# nginx
```bash
docker build -t nginx-86 .
```

## run 
```bash  
docker run -d --name nginx-86 \
  -p 86:80  \
  -e TZ=Asia/Shanghai \
  -v /root/nginx-86:/var/log/nginx \
  nginx-86
```