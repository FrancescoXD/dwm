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
Just use the installation script.
```
$ chmod +x install.sh
$ ./install.sh
```

## Starting
If you are using ```xinit```, start dwm with ```exec ~/.dwm/autostart```, or if you are using a display manager just change ```username``` in ```dwm.desktop``` with your username and copy it to ```/usr/share/xsessions```.
