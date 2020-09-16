# k3s cluster

[Lightweight kubernetes](https://k3s.io/) cluster files.

## Cluster details

* 5 x [raspberry Pi 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/) nodes
* [raspbian buster lite](https://www.raspberrypi.org/downloads/raspbian/) OS
* system architecture [armhf](https://wiki.debian.org/ArmHardFloatPort)
* provisioning tools:
  *  [sup](https://github.com/pressly/sup)
  *  [direnv](https://direnv.net/)
* HP Proliant microserverrunning:
  * MySQL database
  * [apt-cacher-ng](https://wiki.gentoo.org/wiki/Local_distfiles_cache#Using_net-misc.2Fapt-cacher-ng) to allow raspberry
  * Grafana/Prometheus combo

## Applications

* [Tiddlywiki5](https://github.com/Jermolene/TiddlyWiki5) - content management software
* [nfs-provisioner](https://github.com/kubernetes-retired/external-storage/tree/master/nfs) - bind NFS volumes as PVs
* [Firefly iii](https://www.firefly-iii.org/) - personal finance application, requires MySQL-5.6
* **debug-pod**: a simple arm32v7 debug pod for troubleshooting purposes
