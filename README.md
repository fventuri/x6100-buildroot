# Xiegu X6100 buildroot

External buildroot tree for the Xiegu X6100 transceiver.


## How to build

- download the latest stable release of buildroot and untar it:
```
curl -O https://buildroot.org/downloads/buildroot-2025.05.tar.xz
tar xJf buildroot-2025.05.tar.xz
```

- clone this repository
```
git clone https://github.com/fventuri/x6100-buildroot.git
```

- build the buildroot Linux system and create the SD card image (it will take a while)
```
export BR2_EXTERNAL="$PWD/x6100-buildroot"
cd buildroot-2025.05
make X6100_defconfig
make
```

- copy the SD card image to sdcard (under /dev/XYZ):
```
sudo dd if=output/images/sdcard.img of=/dev/XYZ bs=8M
sudo eject /dev/XYZ
cd ..
```


## How to update x6100-gui

- edit `x6100-buildroot/package/x6100-gui/x6100_gui.mk`; update the entry for `X6100_GUI_VERSION`

- remove the old build of x6100-gui and rebuild it:
```
export BR2_EXTERNAL="$PWD/x6100-buildroot"
cd buildroot-2025.05
rm -fr output/build/x6100-gui-*
make
```


## Credits

- Rui Oliveira CT7ALW
- Олег Белоусов (Oleg Belusov) R1CBU
- Георгий Дюльдин (Georgy Dyuldin) R2RFE
- wicknix


## References

- [Buildroot](https://buildroot.org/)
- [current AetherX6100Buildroot - Georgy](https://github.com/gdyuldin/AetherX6100Buildroot)
- [current x6100_gui - Georgy](https://github.com/gdyuldin/x6100_gui)
- [current X6100Control - Georgy](https://github.com/gdyuldin/X6100Control)

- [x6100_gui - wicknix](https://github.com/wicknix/x6100_gui)

- [previous AetherX6100Buildroot - Oleg](https://github.com/strijar/AetherX6100Buildroot)
- [previous x6100_gui - Oleg](https://github.com/strijar/x6100_gui)

- [original X6100Buildroot - Ruy and Oleg](https://github.com/AetherRadio/X6100Buildroot)
- [original X6100Control - Oleg](https://github.com/AetherRadio/X6100Control)
- [original JLT4013A LCD panel driver - Ruy](https://github.com/AetherRadio/panel-jinglitai-jlt4013a)

- [Xiegu X6100 users group](https://groups.io/g/xiegu-x6100)


## License

Licensed under the GNU GPL V3 (see [LICENSE](LICENSE))
