# Very simple Kubernetes demo

## Prepare the demo

Start k3s

```
$ sudo -i k3s server
```

## Run the demo


```
$ docker build -t my/nginx:latest .

$ docker save my/nginx:latest | sudo k3s ctr images import -

$ sudo k3s kubectl apply -f main.yml

$ sudo k3s kubectl get pod
```