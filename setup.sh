rm -rf /Applications/emacsclient.app
cp -rf emacsclient.app /Applications/emacsclient.app
"/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister" -lint -kill -r -domain local -domain system -domain user
