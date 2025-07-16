


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






