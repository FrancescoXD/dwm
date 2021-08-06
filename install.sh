# Copy fonts
mkdir $HOME/.local/share/fonts
cp -r fonts* $HOME/.local/share/fonts

# Copy wallpapers
mkdir $HOME/Wallpapers
cp -r wallpapers/* $HOME/Wallpapers

# Copy scripts
cp -r .dwm $HOME/
chmod +x $HOME/.dwm/autostart.sh

# Compile dwm
cd dwm
make
sudo make install
make clean
cd ..
