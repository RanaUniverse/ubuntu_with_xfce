#!/bin/bash


echo "🔧 XFCE4 Desktop Environment will install on this machine..."
sudo dpkg -i 1_dependencies_xfce4/*.deb 
echo "✅ XFCE4 has been installed."


echo "🔧 Installing WHISKERMENU plugin..."
sudo dpkg -i 2_dependencies_whiskermenu/*.deb 
echo "✅ WHISKERMENU plugin has been installed."


echo "🔧 Installing CLIPMAN plugin..."
sudo dpkg -i 3_dependencies_clipman/*.deb 
echo "✅ CLIPMAN plugin has been installed."


echo "🔧 Installing POWER MANAGER..."
sudo dpkg -i 4_dependencies_power_manager/*.deb 
echo "✅ POWER MANAGER has been installed."


echo "🔧 Installing SYSTEM LOAD plugin..."
sudo dpkg -i 5_dependencies_systemload/*.deb 
echo "✅ SYSTEM LOAD plugin has been installed."


echo "🔧 Installing EYES plugin..."
sudo dpkg -i 6_dependencies_eyes_plugin/*.deb 
echo "✅ EYES plugin has been installed."


echo "🔧 Installing SCREENSHOT tool..."
sudo dpkg -i 7_dependencies_screenshooter/*.deb 
echo "✅ SCREENSHOT tool has been installed."


echo "🔧 Installing REDSHIFT dependencies..."
sudo dpkg -i 8_dependencies_redshift/*.deb 
echo "✅ REDSHIFT has been installed."


echo "🔧 Installing BUCKLESPRING keyboard sound..."
sudo dpkg -i 9_dependencies_bucklespring/*.deb 
echo "✅ BUCKLESPRING has been installed."
echo "The bucklespring setup build need to be done here manually for now.🍌🍌🍌"



echo "🔧 Installing SCREENSAVER..."
sudo dpkg -i 10_dependencies_screensaver/*.deb 
echo "✅ SCREENSAVER has been installed."






echo "🎉 All components have been installed successfully!"


mkdir -pv ~/Pictures/screenshots
cp -rv files_and_folders/scripts_for_shortcuts/ ~/.apps_and_softwares/



./files_and_folders/terminal_alias_for_redshift.sh
./files_and_folders/terminal_alias_for_bucklespring.sh

# Build buckle will chage my working directory so i think to run it at last for now.
./files_and_folders/build_bucklespring_from_source.sh 



echo "Now i will need to setup the `~/.config/xfce4` files to make my settings of my desktop interface and some others."

