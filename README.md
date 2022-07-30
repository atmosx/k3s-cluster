# k3s cluster

[Lightweight kubernetes](https://k3s.io/) cluster version `v1.23.4+k3s1` with `traefik-2.6.1` ingress (default).

## Cluster details

* 5 x [raspberry Pi 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/) nodes (1 API node, 4 worker nodes)
* [https://dietpi.com/](https://dietpi.com/) OS
* system architecture [armhf](https://wiki.debian.org/ArmHardFloatPort) (arm7v64)
* provisioning tools:
  *  [sup](https://github.com/pressly/sup)
  *  [direnv](https://direnv.net/)
* HP Proliant microserver (persistence layer):
  * MySQL database
  * [apt-cacher-ng](https://wiki.gentoo.org/wiki/Local_distfiles_cache#Using_net-misc.2Fapt-cacher-ng) for easier system updates
  * Grafana & Prometheus for monitoring

## Applications

* [certs](https://github.com/math-nao/certs) - lightweight certification management based on DNS
* [Tiddlywiki5](https://github.com/Jermolene/TiddlyWiki5) - content management software
* [nfs-provisioner](https://github.com/kubernetes-retired/external-storage/tree/master/nfs) - bind NFS volumes as PVs
* **debug-pod**: a simple arm7v64 debug pod for troubleshooting purposes


## Secrets

Secrets exported as shell environment variables, through `.envrc` files, see the [direnv](https://direnv.net/) project for details

## Monitoring (WIP)

- https://sysdig.com/blog/monitor-kubernetes-api-server/

TODO:

* Find a way to monitor containers without in-cluster prometheus instance.
