


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
