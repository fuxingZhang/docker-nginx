# nginx

## build image

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

## test  

```bash
docker exec -it nginx bin/sh
# We can run a specific logrotate file manually or forcefully by the following command.
logrotate -f /etc/logrotate.d/nginx
# Or  we can even rotate all the logs  in verbose mode with the command below:
logrotate -f -v /etc/logrotate.conf
cat /var/lib/logrotate.status
```

## tip
file 'docker-entrypoint.sh' and 'nginx'
end of line sequence should be 'LF'