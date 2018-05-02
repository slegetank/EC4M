# cp sh
echo "Copy emacsclient.sh..."
sh_path=/usr/local/bin/emacsclient
if [ ! -e $sh_path ]
then
    cp emacsclient.sh $sh_path
fi
chmod +x $sh_path

# cp app
echo "Copy emacsclient.app..."
rm -rf /Applications/emacsclient.app
cp -rf emacsclient.app /Applications/emacsclient.app

# modify system config
echo "Apply system config..."
"/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister" -lint -kill -r -domain local -domain system -domain user

echo "Have fun"
