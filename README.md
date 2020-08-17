# k3s cluster

## setup

* [Raspberry Pi 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/)
* [Raspbian Buster Lite](https://www.raspberrypi.org/downloads/raspbian/)
* Architecture: [armhf](https://wiki.debian.org/ArmHardFloatPort)
* Number of nodes: 5
* Provisioning tools:
  *  [sup](https://github.com/pressly/sup)
  *  [direnv](https://direnv.net/)

## Applications

* [Tiddlywiki5](https://github.com/Jermolene/TiddlyWiki5)

## Helm charts

### nfs-provisioner

```bash
helm install --set nfs.server=192.168.5.91 --set nfs.path=/storage/k3s --set image.repository=quay.io/external_storage/nfs-client-provisioner-arm stable/nfs-client-provisioner --generate-name
```
