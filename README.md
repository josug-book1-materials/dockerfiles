#Sample dockerfiles used in Chapter14.

##Build images

```
# docker build -t snsapp/dbs:ver1.0 build_dbs
# docker build -t snsapp/app:ver1.0 build_app
# docker build -t snsapp/web:ver1.0 build_web
```


##Run containers

```
# docker run -itd --name dbs snsapp/dbs:ver1.0
# docker run -itd --name app --link dbs:db snsapp/app:ver1.0
# docker run -itd --name web --link app:rest -p 80:80 snsapp/web:ver1.0
```

