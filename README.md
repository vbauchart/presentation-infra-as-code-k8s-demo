# Very simple Kubernetes demo

## Kata build fixing

This Dockerfile has errors. You must fix every errors to make the resulting docker image running.

This Dockerfile also has a size optimisation to find.

## Docker demo

```
$ docker build -t my/nginx:latest .
$ docker run -p 8082:80 my/nginx:latest
```

## Kubernetes demo

Read https://docs.k3s.io/quick-start then install k3s using your prefered method.

Start k3s

```
$ sudo -i k3s server
```


```
$ docker build -t my/nginx:latest .

$ docker save my/nginx:latest | sudo k3s ctr images import -

$ sudo k3s kubectl apply -f main.yml

$ sudo k3s kubectl get pod

$ curl http://locahost:8080/

$ sudo k3s kubectl delete -f main.yml
```