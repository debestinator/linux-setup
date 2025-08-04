# Things to do after fresh Linux install

## 1. Copy fastfetch config

## 2. Initial Setup
#### Install yay
- `sudo pacman -S yay`

#### For Fonts
- `sudo nano /etc/environment` And Paste `FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"` at the end of file.

#### For Gnome
- `yay -S papirus-icon-theme celluloid rhythmbox shotwell onlyoffice-bin extension-manager ptyxis gdm-settings discord zen-browser-bin resources qbittorrent`

#### Adding Chaotic-AUR
- `sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com && sudo pacman-key --lsign-key 3056513887B78AEB` 
- `sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst && sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst`
- `sudo nano /etc/pacman.conf` And Then Paste `[chaotic-aur] Include = /etc/pacman.d/chaotic-mirrorlist` at the end of the file.

## 4(a). Gnome Configuration :-

### Extensions :-

- AppIndicator and KStatusNotifierItem Support
- Blur My Shell
- Clipboard Indicator
- Dash To Dock
- Desktop Icons NG (DING)
- Gnome 4x UI Improvements
- GSConnect  `sudo ufw allow 1714:1764/udp && sudo ufw allow 1714:1764/tcp && sudo ufw reload`
- Quick Settings Tweaks
- Search Light
- User Themes
