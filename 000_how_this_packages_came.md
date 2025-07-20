


### 1. sudo apt install xfce4

```
sudo apt-get install --print-uris --yes xfce4 | grep ^\' | cut -d\' -f2 > xfce4-packages.txt

mkdir 1_dependencies_xfce4

cd 1_dependencies_xfce4

wget -i ../xfce4-packages.txt
```

```
sudo dpkg -i *.deb
```

* In this time i need to select (1. gdm3  2. lightdm)
* i will select 1 (gdm3)




### 2. sudo apt install xfce4-whiskermenu-plugin

```
sudo apt-get install --print-uris --yes xfce4-whiskermenu-plugin | grep ^\' | cut -d\' -f2 > whiskermenu-packages.txt

mkdir 2_dependencies_whiskermenu

cd 2_dependencies_whiskermenu

wget -i ../whiskermenu-packages.txt
```

      <property name="button-icon" type="string" value="/home/RANA_UNIVERSE/Pictures/linux_logo.png"/>

Upper is in the panel need to careful to change the username from the xml file.




### 3. sudo apt install xfce4-clipman-plugin

```
sudo apt-get install --print-uris --yes xfce4-clipman-plugin | grep ^\' | cut -d\' -f2 > clipman-packages.txt

mkdir 3_dependencies_clipman
cd 3_dependencies_clipman

wget -i ../clipman-packages.txt
``` 






### 4. sudo apt install xfce4-power-manager
This is not a plugin of panel by default, but this is like a external app.

```
sudo apt-get install --print-uris --yes xfce4-power-manager | grep ^\' | cut -d\' -f2 > power-manager-packages.txt

mkdir 4_dependencies_power_manager
cd 4_dependencies_power_manager

wget -i ../power-manager-packages.txt
```






### 5. sudo apt install xfce4-systemload-plugin


```
sudo apt-get install --print-uris --yes xfce4-systemload-plugin | grep ^\' | cut -d\' -f2 > systemload-packages.txt

mkdir 5_dependencies_systemload
cd 5_dependencies_systemload

wget -i ../systemload-packages.txt
```






### 6. sudo apt install xfce4-eyes-plugin

```
sudo apt-get install --print-uris --yes xfce4-eyes-plugin | grep ^\' | cut -d\' -f2 > xfce4-eyes-plugin-packages.txt

mkdir 6_dependencies_eyes_plugin
cd 6_dependencies_eyes_plugin

wget -i ../xfce4-eyes-plugin-packages.txt
```









### 7. sudo apt install xfce4-screenshooter
This upper is for screenshot taken in the xfce.

```
sudo apt-get install --print-uris --yes xfce4-screenshooter | grep ^\' | cut -d\' -f2 > screenshooter-urls.txt

mkdir 7_dependencies_screenshooter
cd 7_dependencies_screenshooter

wget -i ../screenshooter-urls.txt
```

* After the screenshoter package will install, then i will assign some script with shortcut key with this.

`screenshot_active_windows.sh screenshot_rectangle_selection.sh screenshot_fullscreen.sh` has been saved in `~/.apps_and_softwares/scripts_for_shortcuts` place and it will assign with shortcut keys.

From the boss path i will copy paste the screenshot work buttons shortcuts.
`cp -rv files_and_folders/scripts_for_shortcuts/ ~/.apps_and_softwares/`







### 8. Redshift For Night Like red color
` sudo apt install redshift redshift-gtk`

```
sudo apt-get install --print-uris --yes redshift redshift-gtk | grep ^\' | cut -d\' -f2 > redshift-packages.txt

mkdir 8_dependencies_redshift
cd 8_dependencies_redshift

wget -i ../redshift-packages.txt
```

Now i need to install this, and then use the terminal shortcut,

```
echo "The redshift will install in this machine to control the night light."

# sudo dpkg -i dependencies/*.deb
sudo apt install ./dependencies/*.deb

./files_and_folders/terminal_alias_for_redshift.sh 

echo "The Redshift has been installed Successfully."
```







### 9. Bucklespring Build From Source

```
I need to download [zip of bucklespring](https://github.com/zevv/bucklespring)...

sudo apt-get install --print-uris --yes libopenal-dev libalure-dev libxtst-dev pkg-config | grep ^\' | cut -d\' -f2 > bucklespring_packages.txt

mkdir 9_dependencies_bucklespring
cd 9_dependencies_bucklespring

wget -i ../bucklespring_packages.txt
```
Upper is the dependencies it need to make the installation of this available.
After this i will install all those.


Below the build the bucklespring from the source code for build from source.

```
echo "Creating the directory if it doesn't already exist...🍌"

mkdir -pv ~/.apps_and_softwares

# Check for old bucklespring installation, and unzip is both connected.
echo "Checking any old bucklespring folder inside ~/.apps_and_softwares..."

if [ -d ~/.apps_and_softwares/bucklespring* ]; then
    echo "Old bucklespring folder found! Removing...🍌"
    rm -rf ~/.apps_and_softwares/bucklespring*
    echo "Old bucklespring folder removed 🍌"
else
    echo "No previous bucklespring folder found. Fresh installation will proceed...🍌"
fi

unzip -qq bucklespring*.zip -d ~/.apps_and_softwares/

echo "Bucklespring extraction completed successfully! 🎉"

cd ~/.apps_and_softwares/bucklespring*

make

./buckle

make libinput=1
```

```
./files_and_folders/terminal_alias_for_bucklespring.sh
```

Now i will install those dependencies and then use `installation_script.sh` and then i will use terminal alias.



### 10. sudo apt install xfce4-screensaver

```
sudo apt-get install --print-uris --yes xfce4-screensaver | grep ^\' | cut -d\' -f2 > screensaver-urls.txt

mkdir 10_dependencies_screensaver
cd 10_dependencies_screensaver

wget -i ../screensaver-urls.txt
```

