


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





