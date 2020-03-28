# nginx
```bash
docker build -t nginx-83 .
```

## run 
```bash  
docker run -d --name nginx-83 \
  -p 83:80  \
  -e TZ=Asia/Shanghai \
  -v /root/nginx-83:/var/log/nginx \
  nginx-83
```