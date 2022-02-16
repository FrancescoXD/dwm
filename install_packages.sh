# Install dmenu
git clone https://github.com/FrancescoXD/dmenu
cd dmenu
wal -i $HOME/Wallpapers/wall.png
sed -i "s/wm/$(whoami)/g" config.def.h
make
sudo make install
make clean
cd ..

# Install st (siduck76's build)
git clone https://github.com/siduck76/st
cd st
sed -i 's/float alpha = 1.0;/float alpha = 0.8;/g' config.def.h
make
sudo make install
make clean
cd ..

