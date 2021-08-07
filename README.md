# dwm
My personal dwm config

![screen1](/screenshots/screen1.png)

## Requirements
- xorg
- feh
- dmenu (I'm going to replace it with rofi)
- st (siduck76's build)

## Installation
Just use the installation script.
```
$ chmod +x install.sh
$ ./install.sh
```

## Starting
If you are using ```xinit```, start dwm with ```exec ~/.dwm/autostart```, or if you are using a display manager just change ```username``` in ```dwm.desktop``` with your username and copy it to ```/usr/share/xsessions```.