# Dockerfile for uptime

```
# Run mongodb
$ docker run -d -p 27017:27017 --name mongodb dockerfile/mongodb mongod --smallfiles

# Run uptime
$ docker pull naycot/uptime
$ docker run -it \
    -p 8082:8082 \
    -e MONGODB_HOST_PORT='172.17.42.1:27017' \
    -e MONGODB_DATABASE=uptime \
    -e MONGODB_USER=root \
    nacyot/uptime 
```

