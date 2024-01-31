#!/bin/bash -e
echo "Creating /opt/lexaloffle/ ..."
sudo mkdir -p /opt/lexaloffle/

echo "Copying pico8 folder into /opt/lexaloffle/ ..."
sudo cp -r pico-8 /opt/lexaloffle/

echo "Creating .desktop file..."
sudo touch /usr/share/applications/pico-8.desktop

echo "[Desktop Entry]
Type=Application
Name=Pico 8
GenericName=Fantasy Console
Comment=Lexaloffle's fantasy console
Exec=/opt/lexaloffle/pico-8/pico8
Icon=/opt/lexaloffle/pico-8/lexaloffle-pico8.png
Terminal=false
Categories=GTK;Development;Game Development;
StartupNotify=true
Keywords=pico8;pico;pico-8;lexaloffle;gamedev;
" > pico-8.desktop

sudo mv pico-8.desktop /usr/share/applications/pico-8.desktop

echo "Pico-8 Installed on /opt/lexaloffle/pico-8/"
