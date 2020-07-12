#! /bin/bash

echo "[START]: git-packages installation..."

# output packages directory creation
[ ! -d $HOME/Downloads ] && mkdir $HOME/Downloads
[ ! -d $HOME/Downloads/git-downloads ] && mkdir $HOME/Downloads/git-downloads

#
# AUR
#

# spicetify-cli
# https://aur.archlinux.org/spicetify-cli.git
./aur-get https://aur.archlinux.org/spicetify-cli.git &&
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
# use:
# spicetify config current_theme $THEME_NAME
# spicetify auto backup apply

# compton-tyrone-git
# https://aur.archlinux.org/compton-tryone-git.git
./aur-get https://aur.archlinux.org/compton-tryone-git.git &&

# pfetch-git
# https://aur.archlinux.org/pfetch-git.git
./aur-get https://aur.archlinux.org/pfetch-git.git &&

# dropbox
# https://aur.archlinux.org/dropbox.git
./aur-get https://aur.archlinux.org/dropbox.git

#
# GITHUB
#

# BeautifulDiscord
# https://github.com/leovoel/BeautifulDiscord
python3 -m pip install -U https://github.com/leovoel/BeautifulDiscord/archive/master.zip &&
# use: python -m beautifuldiscord --css ~/.config/discord/themes/$THEME_NAME

echo "[FINISHED]: git-packages installation (success!)"
