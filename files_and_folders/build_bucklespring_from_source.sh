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