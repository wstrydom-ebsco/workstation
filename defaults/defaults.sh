#!/usr/bin/env zsh
set -Eeuo pipefail

osascript -e 'tell application "System Preferences" to quit'

sudo -v

__REAL_SCRIPTDIR=$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P )

echo "--- Activity Monitor"
. $__REAL_SCRIPTDIR/activitymonitor.sh

echo "--- App Store"
. $__REAL_SCRIPTDIR/appstore.sh

echo "--- Battery"
. $__REAL_SCRIPTDIR/battery.sh

echo "--- Desktop Services"
. $__REAL_SCRIPTDIR/desktopservices.sh

echo "--- Dock"
. $__REAL_SCRIPTDIR/dock.sh

echo "--- Finder"
. $__REAL_SCRIPTDIR/finder.sh

echo "--- Global"
. $__REAL_SCRIPTDIR/global.sh

echo "--- Login Window"
. $__REAL_SCRIPTDIR/loginwindow.sh

echo "--- Mail"
. $__REAL_SCRIPTDIR/mail.sh

echo "--- Menu"
. $__REAL_SCRIPTDIR/menubar.sh

echo "--- Network Browser"
. $__REAL_SCRIPTDIR/networkbrowser.sh

echo "--- 1Password"
. $__REAL_SCRIPTDIR/onepassword.sh

echo "--- Photos"
. $__REAL_SCRIPTDIR/photos.sh

echo "--- Preview"
. $__REAL_SCRIPTDIR/preview.sh

echo "--- Safari"
. $__REAL_SCRIPTDIR/safari.sh

echo "--- Screen Capture"
. $__REAL_SCRIPTDIR/screencapture.sh

echo "--- Sound"
. $__REAL_SCRIPTDIR/sound.sh

echo "--- System"
. $__REAL_SCRIPTDIR/system.sh

echo "--- TextEdit"
. $__REAL_SCRIPTDIR/textedit.sh

echo "--- Time Machine"
. $__REAL_SCRIPTDIR/timemachine.sh

echo "--- Universal Access"
. $__REAL_SCRIPTDIR/universalaccess.sh

echo "--- Microsoft Office"
. $__REAL_SCRIPTDIR/office.sh

echo "--- Library Folders"
chflags nohidden "${HOME}/Library" && xattr -d com.apple.FinderInfo "${HOME}/Library" 2> /dev/null || true
sudo chflags nohidden /Volumes

echo "--- Terminal"
. $__REAL_SCRIPTDIR/terminal.sh

echo "--- Killing Apps"
for app (
    "Activity Monitor"
    "Address Book"
    "Calendar"
    "cfprefsd"
    "Contacts"
    "Dock"
    "Finder"
    "iCal"
    "Mail"
    "Messages"
    "Photos"
    "Safari"
    "SystemUIServer"
    "Terminal"
); do
    echo "Killing \"${app}\"..."
    killall "${app}" &> /dev/null || true
done