# vyos-custom

This is my custom build of rolling [VyOS](https://vyos.io/), built using
[vyos-modular](https://github.com/jack-broadway/vyos-modular) (actually my
[fork](https://github.com/Ramblurr/vyos-modular) of it for now until I upstream
the changes).


| Module                  | Link                                                   |
|-------------------------|--------------------------------------------------------|
| tailscale               | https://github.com/jack-broadway/vyos-module-tailscale |
| speedtest               | https://github.com/kylechase/vyos-module-speedtest     |
| mellanox firmware tools | https://github.com/Ramblurr/vyos-module-mft            |
| (somewhat) gitops       | https://github.com/Ramblurr/vyos-module-gitops         |

## Latest

Latest build is under [Ramblurr/vyos-custom/releases](https://github.com/Ramblurr/vyos-custom/releases).

## Build

``` sh
make build
```

**Prereqs**:

* docker (podman support not quite there yet)
* python >= 3.10
* rsync
* git


## Want your own?

Copy this repo, supply your own config.
