[![](https://img.shields.io/badge/askubuntu-bookmarks-orange?style=for-the-badge&logo=ubuntu)](https://askubuntu.com/users/425876/parham-alvani?tab=bookmarks)
[![](https://img.shields.io/badge/superuser-bookmarks-black?style=for-the-badge&logo=superuser)](https://superuser.com/users/1199014/parham-alvani?tab=bookmarks)
[![](https://img.shields.io/badge/serverfault-bookmarks-black?style=for-the-badge&logo=serverfault)](https://serverfault.com/users/590681/parham-alvani?tab=bookmarks)

### issue with system local on ubuntu

use the following command to reconfigure it.

```sh
sudo dpkg-reconfigure locales
```

### using bluetooth speaker/headphone

run `bluetoothctl`, then:

```
[bluetooth]# scan on
[bluetooth]# scan off
[bluetooth]# pair A0:60:90:37:C0:3C
[bluetooth]# trust A0:60:90:37:C0:3C
[bluetooth]# connect A0:60:90:37:C0:3C
[bluetooth]# info A0:60:90:37:C0:3C
```

### fix a missing <code>apt</code> repository public key

```sh
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys <missing-public-key>
```

### fingerprint at ubuntu

```sh
# Use fprintd (lacks gui)
sudo apt install fprintd libpam-fprintd

# Enroll specific finger
fprintd-enroll -f left-index-finger

# Finally, enable access by marking Fingerprint option with * using the spacebar key in:
sudo pam-auth-update
```

### natural scrolling with _X11_

Open the `/etc/X11/xorg.conf.d/30-touchpad.conf` file, then add the **natural scrolling** option:

```
Section "InputClass"
    Identifier "touchpad"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "NaturalScrolling" "true"
EndSection
```

### swap alt and meta with _X11_

Open the `/etc/X11/xorg.conf.d/00-keyboard.conf` file, then add the **altwin** option:

```
Section "InputClass"
    ...
  Option "XkbOptions" "altwin:swap_alt_win"
    ...
EndSection
```

### enable the keyring for applications run through the terminal, such as SSH

add the following to your `~/.bash_profile`, `~/.zshenv`, or similar:

```sh
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
```

### do you have any HFP-only headphone?

Use the following procedure to have it on you Arch:

```sh
sudo pacman -Syu ofono phonesim

# validate the content of /etc/ofono/phonesim.conf
# [phonesim]
# Address=127.0.0.1
# Port=12345

sudo systemctl start ofono.service
phonesim -p 12345 /usr/share/phonesim/default.xml &
dbus-send --print-reply --system --dest=org.ofono /phonesim org.ofono.Modem.SetProperty string:"Powered" variant:boolean:"true"
```

### **don't** forget that you can configure `github-cli` to use existing tokens.

```sh
gopass show --password token/github/gh | gh auth login --with-token
```

### unsecure samba on windows 10

```powershell
Write-Output "Provide a way for connecting to the unsecure samba"
Get-SmbClientConfiguration
Set-SmbClientConfiguration -EnableInsecureGuestLogons:$true
```

### ubuntu mirrors in Iran

- use _http://ir.archive.ubuntu.com/ubuntu/_ instead of _http://archive.ubuntu.com/ubuntu_.
- use _http://ir.archive.ubuntu.com/ubuntu/_ instead of _http://security.ubuntu.com/ubuntu_.

### update-grub with windows

```sh
yay -Syu --needed --noconfirm update-grub
sudo pacman -Syu os-prober

# set GRUB_DISABLE_OS_PROBER=false in /etc/default/grub
```

### touchpad on trackpad for asus useless feature

```sh
sudo pacman -Syu libevdev python-libevdev i2c-tools
sudo modprobe i2c-dev
sudo i2cdetect -l

git clone https://github.com/mohamed-badaoui/asus-touchpad-numpad-driver
cd asus-touchpad-numpad-driver
sudo ./install.sh
```

### how we can persist xrandr options

you can persist the xrandr commands by writing them intto `.xprofile`.

```sh
xrandr --output LVDS-1 --gamma 1.6
```

### make macbook to act like a normal keyboard

write the following configuration on `/etc/modprobe.d/hid_apple.conf`:

```
options hid_apple swap_opt_cmd=1
options hid_apple swap_fn_leftctrl=1
```