# ****** **Strictly For My Personal Use Only** ******

# Things to do after fresh Linux install

## 1. Copy fastfetch config

## 2. Initial Setup
#### Install yay
- `sudo pacman -S yay`

#### For Fonts
- `sudo nano /etc/environment` then paste `FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"` at the end of file.

#### Adding Chaotic-AUR

```
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com && sudo pacman-key --lsign-key 3056513887B78AEB 
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' \
'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
```

Do `sudo nano /etc/pacman.conf` then paste

```
[chaotic-aur] 
Include = /etc/pacman.d/chaotic-mirrorlist
```

at the end of the file.

## 3. Go into respective directory of the DE or WM installed

- For Gnome:- https://github.com/debestinator/linux-setup/tree/main/Gnome

## 4. Extras
- Printer:- https://github.com/debestinator/linux-setup/tree/main/Printer-Setup
