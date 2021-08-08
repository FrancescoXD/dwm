# Copy fonts
mkdir $HOME/.local/share/fonts
cp -r fonts* $HOME/.local/share/fonts

# Copy wallpapers
mkdir $HOME/Wallpapers
cp -r wallpapers/* $HOME/Wallpapers

# Copy scripts
cp -r .dwm $HOME/
chmod +x $HOME/.dwm/autostart.sh
chmod +x $HOME/.dwm/bar.sh

# Compile dwm
cd dwm
make
sudo make install
make clean
cd ..

# Install dmenu
git clone https://github.com/FrancescoXD/dmenu
cd dmenu
username=$(whoami)
sed -i "s/wm/$username/g" config.def.h
make
sudo make install
make clean
cd ..

# Install st (siduck76's build)
git clone https://github.com/siduck76/st
cd st
make
sudo make install
make clean
cd ..
