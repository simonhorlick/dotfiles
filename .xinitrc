# Use arrow cursor instead of default X shape
xsetroot -cursor_name left_ptr

# Set xterm appearance
xrdb ~/.Xresources

# Enable basic compositing
xcompmgr -n &

# Set a desktop background
nitrogen --restore &

# Use gtk themes from gnome settings
gnome-settings-daemon &

# Start GNOME Keyring for login-based key unlocking
eval $(gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)

# May as well launch these by default
xterm & 
google-chrome &

exec xmonad
