# docker-nginx
docker image of nginx

### build  
```bash
$ docker build -t zhangfuxing/nginx:latest .
```  

### push
```bash
$ docker push zhangfuxing/nginx:latest
```

### run  
```bash
$ docker run -d --name nginx \
  --net host \
  -e TZ=Asia/Shanghai \
  -v /config/nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v /var/log/nginx:/var/log/nginx \
  -v /nginx/static:/usr/share/nginx/static:ro \
  zhangfuxing/nginx:latest
# Enter the container
$ docker exec -it nginx bash
# Exit
$ exit
```  

### docker-compose  
``` bash
# run
$ docker-compose up -d
# Enter the container
$ docker-compose exec nginx bash
# Exit
$ exit
```