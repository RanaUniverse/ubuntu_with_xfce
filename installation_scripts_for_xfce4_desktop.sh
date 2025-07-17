#!/bin/bash


echo "🔧 XFCE4 Desktop Environment will install on this machine..."
sudo dpkg -i 1_dependencies_xfce4/*.deb || sudo apt-get -f install -y
echo "✅ XFCE4 has been installed."


echo "🔧 Installing WHISKERMENU plugin..."
sudo dpkg -i 2_dependencies_whiskermenu/*.deb || sudo apt-get -f install -y
echo "✅ WHISKERMENU plugin has been installed."


echo "🔧 Installing CLIPMAN plugin..."
sudo dpkg -i 3_dependencies_clipman/*.deb || sudo apt-get -f install -y
echo "✅ CLIPMAN plugin has been installed."


echo "🔧 Installing POWER MANAGER..."
sudo dpkg -i 4_dependencies_power_manager/*.deb || sudo apt-get -f install -y
echo "✅ POWER MANAGER has been installed."


echo "🔧 Installing SYSTEM LOAD plugin..."
sudo dpkg -i 5_dependencies_systemload/*.deb || sudo apt-get -f install -y
echo "✅ SYSTEM LOAD plugin has been installed."


echo "🔧 Installing EYES plugin..."
sudo dpkg -i 6_dependencies_eyes_plugin/*.deb || sudo apt-get -f install -y
echo "✅ EYES plugin has been installed."


echo "🔧 Installing SCREENSHOT tool..."
sudo dpkg -i 7_dependencies_screenshooter/*.deb || sudo apt-get -f install -y
echo "✅ SCREENSHOT tool has been installed."


echo "🔧 Installing REDSHIFT dependencies..."
sudo dpkg -i 8_dependencies_redshift/*.deb || sudo apt-get -f install -y
echo "✅ REDSHIFT has been installed."


echo "🔧 Installing BUCKLESPRING keyboard sound..."
sudo dpkg -i 9_dependencies_bucklespring/*.deb || sudo apt-get -f install -y
echo "✅ BUCKLESPRING has been installed."


echo "🎉 All components have been installed successfully!"


./files_and_folders/terminal_alias_for_redshift.sh

./files_and_folders/terminal_alias_for_bucklespring.sh



mkdir -pv ~/Pictures/screenshots
cp -rv files_and_folders/scripts_for_shortcuts/ ~/.apps_and_softwares/


echo "Now i will need to setup the `~/.config/xfce4` files to make my settings of my desktop interface and some others."

