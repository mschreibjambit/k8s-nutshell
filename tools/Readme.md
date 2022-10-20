# Installation der Tools

Für den Workshop werden Tools benötigt, die installiert werden müssen. Folgende Tools sind Vorraussetzung und sollen schon installiert sein:

* Docker bzw. Docker Desktop
* Auf Windows: WSL2

## Git

Es wird git benötigt. Dies kann unter Linux und WSL2 über den Paket Manager installiert werden:

```
# Ubuntu & Debian

sudo apt-get update 
sudo apt-get install -y git

# ArchLinux

sudo pacman -S git

# MacOS

xcode-select --install
```

## Links zu den Tools

* [k3d](https://github.com/k3d-io/k3d) in der Version v5.4.6
* [kubectl](https://kubernetes.io/docs/tasks/tools/)
* [k9s](https://github.com/derailed/k9s)