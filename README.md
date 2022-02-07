# dwm
My personal dwm config

![screen1](/screenshots/screen2.png)

![screen2](/screenshots/screen3.png)

## Requirements
- xorg
- feh
- zsh
- [dmenu](https://github.com/FrancescoXD/dmenu)
- pywal
- st (siduck76's build)
- picom (optional, transparency)

## Installation
To install `dwm` do:

```
$ chmod +x install_dwm.sh
$ ./install_dwm.sh
```

If you want also to install `dmenu` and `st` start `install_packages.sh`.

## Starting
If you are using ```xinit```, start dwm with ```exec ~/.dwm/autostart```, or if you are using a display manager just change ```username``` in ```dwm.desktop``` with your username and copy it to ```/usr/share/xsessions```.
