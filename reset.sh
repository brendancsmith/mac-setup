#!/usr/bin/env sh
set -v

# Clear the Launch Services Database ("open with" menus)
cd /System/Library/Frameworks
cd CoreServices.framework/Frameworks/LaunchServices.framework/Support
./lsregister -kill -r -all local, system, user; killall Dock;
