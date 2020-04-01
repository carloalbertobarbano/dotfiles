
#!/bin/sh

mkdir ~/.config/i3status


mv ~/.config/i3/config ~/.config/i3/confing_bak 
ln -s $(pwd)/i3/config ~/.config/i3/config
ln -s $(pwd)/i3status/config ~/.config/i3/config
