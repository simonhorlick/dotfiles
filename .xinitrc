# Use arrow cursor instead of default X shape
xsetroot -cursor_name left_ptr

xrdb ~/.Xresources

#gnome-settings-daemon

# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)

# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

exec xmonad
