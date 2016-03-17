# Clear existing dock items and add a preset list of apps

# Delete default items
defaults -currentHost delete com.apple.dock persistent-apps
defaults -currentHost delete com.apple.dock persistent-others

# Add persistent apps
defaults -currentHost write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Google Chrome.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults -currentHost write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Spotify.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

# Add persistent folders
defaults -currentHost write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>arrangement</key><integer>1</integer><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>/Applications</string><key>_CFURLStringType</key><integer>0</integer></dict><key>file-label</key><string>Applications</string><key>file-type</key><integer>2</integer><key>showas</key><integer>2</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"
defaults -currentHost write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>arrangement</key><integer>2</integer><key>displayas</key><integer>0</integer><key>file-data</key><dict><key>_CFURLString</key><string>$HOME/Downloads</string><key>_CFURLStringType</key><integer>0</integer></dict><key>file-label</key><string>Downloads</string><key>file-type</key><integer>2</integer><key>showas</key><integer>1</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"
