
#!/bin/sh

yay -S rofi

mkdir ~/.config/i3status
mv ~/.config/i3/config ~/.config/i3/confing_bak 
ln -s $(pwd)/i3/config ~/.config/i3/config
ln -s $(pwd)/i3status/config ~/.config/i3status/config
cp $(pwd)/i3status/ram_i3status.sh ~/.config/i3status/ram_i3status.sh


