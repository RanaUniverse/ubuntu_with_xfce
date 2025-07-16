


```
sudo apt-get install --print-uris --yes xfce4 | grep ^\' | cut -d\' -f2 > xfce4-packages.txt

mkdir dependencies_xfce4

cd dependencies_xfce4

wget -i ../xfce4-packages.txt
```

# Now i will do install all those packages.

```
sudo dpkg -i *.deb
```

# In this time i need to select (1. gdm3  2. lightdm)
# i will select 1

### sudo apt install xfce4-whiskermenu-plugin

```
sudo apt-get install --print-uris --yes xfce4-whiskermenu-plugin | grep ^\' | cut -d\' -f2 > whiskermenu-packages.txt

mkdir dependencies_whiskermenu

cd dependencies_whiskermenu

wget -i ../whiskermenu-packages.txt
```

      <property name="button-icon" type="string" value="/home/RANA_UNIVERSE/Pictures/linux_logo.png"/>
Upper is in the panel

Need to careful to change the username

### sudo apt install xfce4-clipman-plugin


```
sudo apt-get install --print-uris --yes xfce4-clipman-plugin | grep ^\' | cut -d\' -f2 > clipman-packages.txt

mkdir dependencies_clipman
cd dependencies_clipman

wget -i ../clipman-packages.txt
``` 

### sudo apt install xfce4-power-manager

```
sudo apt-get install --print-uris --yes xfce4-power-manager | grep ^\' | cut -d\' -f2 > power-manager-packages.txt

mkdir dependencies_power_manager
cd dependencies_power_manager

wget -i ../power-manager-packages.txt

```


### sudo apt install xfce4-systemload-plugin


```
sudo apt-get install --print-uris --yes xfce4-systemload-plugin | grep ^\' | cut -d\' -f2 > systemload-packages.txt

mkdir dependencies_systemload
cd dependencies_systemload

wget -i ../systemload-packages.txt
```


This below is for screenshot taken in the xfce.
### sudo apt install xfce4-screenshooter
```
sudo apt-get install --print-uris --yes xfce4-screenshooter | grep ^\' | cut -d\' -f2 > screenshooter-urls.txt

mkdir dependencies_screenshooter
cd dependencies_screenshooter

wget -i ../screenshooter-urls.txt
```
After the screenshoter package will install, then i will assign some script with shortcut key with this.

`screenshot_active_windows.sh screenshot_rectangle_selection.sh screenshot_fullscreen.sh` has been saved in ~/.apps_and_softwares place and it will assign with shortcut keys.




### Now it will have Redshift For Red Color
` sudo apt install redshift redshift-gtk `

```
sudo apt-get install --print-uris --yes redshift redshift-gtk | grep ^\' | cut -d\' -f2 > redshift-packages.txt

mkdir dependencies_redshift
cd dependencies_redshift

wget -i ../redshift-packages.txt
```

Now i need to install thsi, and then use the terminal shortcut,
```
echo "The redshift will install in this machine to control the night light."

# sudo dpkg -i dependencies/*.deb
sudo apt install ./dependencies/*.deb

./terminal_alias_for_redshift.sh 

echo "The Redshift has been installed Successfully."
```


# Now i will install Bucklespring from the source code.


```
I need to download [zip of bucklespring](https://github.com/zevv/bucklespring)...

sudo apt-get install --print-uris --yes libopenal-dev libalure-dev libxtst-dev pkg-config | grep ^\' | cut -d\' -f2 > bucklespring_packages.txt


mkdir dependencies_bucklespring
cd dependencies_bucklespring

wget -i ../bucklespring_packages.txt
```
After this i will install all those.
Below the build the bucklespring from the source code

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




Now i will install those dependencies and then use `installation_script.sh` and then i will use terminal alias.


```

echo "For Bucklespring, My own Terminal Alias is Creating Now. -Rana Universe 🍌🍌🍌>"


(cat << 'EOF' && cat ~/.bashrc) > ~/.bashrc.tmp && mv ~/.bashrc.tmp ~/.bashrc

# This is for my favourite terminal shortcut to start & stop bucklespring- Rana Universe 🍌🍌🍌

alias 1='nohup bash -c "cd ~/.apps_and_softwares/bucklespring* && ./buckle" &'

EOF

echo "in terminal '1' and enter to start the bucklespring manually, and to stop 'pkill buckle'"

```



### sudo apt install xfce4-eyes-plugin


```
sudo apt-get install --print-uris --yes xfce4-eyes-plugin | grep ^\' | cut -d\' -f2 > xfce4-eyes-plugin-packages.txt

mkdir dependencies_eyes_plugin
cd dependencies_eyes_plugin

wget -i ../xfce4-eyes-plugin-packages.txt
```






