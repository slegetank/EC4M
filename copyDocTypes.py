import biplist
import os
import sys

if not os.path.exists("/Applications/Emacs.app"):
    print("Emacs not exists")
    sys.exit(-1)

try:
    emacsPlist = biplist.readPlist("/Applications/Emacs.app/Contents/Info.plist")
    docTypes = emacsPlist["CFBundleDocumentTypes"]

    destPath = "./emacsclient.app/Contents/Info.plist"
    plist = biplist.readPlist(destPath)
    plist["CFBundleDocumentTypes"] = docTypes

    biplist.writePlist(plist, destPath)
except Exception as e:
    raise Exception(e)
