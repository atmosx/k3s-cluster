# k3s cluster

[Lightweight kubernetes](https://k3s.io/) cluster version `v1.18.6+k3s1` with `traefik-1.7` ingress (default).

## Cluster details

* 5 x [raspberry Pi 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/) nodes (1 API node, 4 orker noders)
* [raspbian buster lite](https://www.raspberrypi.org/downloads/raspbian/) OS
* system architecture [armhf](https://wiki.debian.org/ArmHardFloatPort) (arm7v32)
* provisioning tools:
  *  [sup](https://github.com/pressly/sup)
  *  [direnv](https://direnv.net/)
* HP Proliant microserver (persistence layer):
  * MySQL database
  * [apt-cacher-ng](https://wiki.gentoo.org/wiki/Local_distfiles_cache#Using_net-misc.2Fapt-cacher-ng) for easier system updates
  * Grafana & Prometheus for monitoring

## Applications

* [whoami](https://github.com/traefik/whoami) - simple Golang http application to test ingress
* [Tiddlywiki5](https://github.com/Jermolene/TiddlyWiki5) - content management software
* [nfs-provisioner](https://github.com/kubernetes-retired/external-storage/tree/master/nfs) - bind NFS volumes as PVs
* [Firefly iii](https://www.firefly-iii.org/) - personal finance application, requires MySQL-5.6
* **debug-pod**: a simple arm32v7 debug pod for troubleshooting purposes


## Secrets

Secrets exported as shell environment variables, through `.envrc` files, see the [direnv](https://direnv.net/) project for details
