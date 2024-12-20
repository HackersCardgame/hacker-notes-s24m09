#!/bin/bash

#Script Template
#==============================================================================
#title           :
#description     :
#author		 :Marc Landolt, Twitter: @PinkyDef / Github: @braindef
#date            :
#version         :0.1
#usage		 :
#notes           :
#bash_version    :
#==============================================================================


# Define Editor
#==============================================================================
#EDITOR=$(which nano)
EDITOR=$(which vim)
#==============================================================================


# Color Definitions
#==============================================================================
red="\e[91m"
yellow="\e[0;33m"
green="\e[0;32m"
default="\e[39m"
#==============================================================================

echo "
#deb cdrom:[Debian GNU/Linux 12.5.0 _Bookworm_ - Official amd64 DVD Binary-1 with firmware 20240210-11:28]/ bookworm contrib main non-free-firmware

deb https://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian bookworm main contrib non-free non-free-firmware

deb https://deb.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware

deb https://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
"

# Helper Function for YES or NO Answers
#------------------------------------------------------------------------------
# Example YESNO "Question to ask" "command to be executed"
#==============================================================================
function YESNO {
echo -e -n "
${red}$1 [y/N]${default} "
read -d'' -s -n1 answer
echo
if  [ "$answer" = "y" ] || [ "$answer" = "Y" ]
then
return 0
else
echo -e "
"
return 1
fi
}
#==============================================================================

apt-get update -y
apt-get upgrade -y
apt-get install -y screen
apt-get install -y gdm3
apt-get install -y gnome
apt-get install -y mpg123
apt-get install -y alsa-utils
apt-get install -y python3-mido python3-rtmidi python3-pulsectl
apt-get install -y gnome-shell
apt-get install -y gnome-backgrounds
apt-get install -y wmctrl
apt-get install -y xdotool

apt-get purge -y cups*
apt-get purge libcupsfilters2*
apt-get install -y cups
apt-get install cups-client -y
apt-get install -y gedit
apt-get install -y gnome-terminal
apt-get install -y gimp
apt-get install -y calibre
apt-get purge firefox-esr
apt-get install -y epiphany-browser
#apt-get install -y git vim sudo gnome-boxes figlet inkscape gedit mixxx 
apt-get install -y qemu-system qemu-kvm libvirt-daemon bridge-utils virt-manager cpu-checker

apt-get install -y git vim sudo figlet inkscape gedit mixxx 
apt-get install -y libvirt-daemon-system 
apt-get install -y ffmpeg
apt-get install -y kdenlive
apt-get install -y obs-studio
apt-get install -y tesseract-ocr
apt-get install -y nvidia-detect
apt-get install -y locate

fgrep -ri PRUNEPATHS /etc/ 2>/dev/null

if YESNO "edit PRUNEPATHS and updatedb ???"
then
#echo run /old2/home/marc/hacker-notes-s??m??/tools/mount.sh
echo mount all drives with eg. nautilus in gui with that user you normally use
#su marc

echo pressanykey
read
find /media/ -type d -maxdepth 2
read
vim /etc/cron.daily/locate -c "/PRUNEPATH"
updatedb
fi
apt-get install -y apt-file
apt-file update
apt-get install -y espeak-ng
apt-get install -y pavumeter
apt-get install -y callibre
apt-get install -y iotop
apt-get install -y xxd

apt-get install -y libreoffice
apt-get install -y nautilus

apt-get install -y eog

apt-get install -y pavucontrol
apt-get install -y rdfind
apt-get install -y rsync
apt-get install -y asunder
apt-get install -y brasero
apt-get install -y mdadm
apt-get install -y smarttools
apt-get install -y jigdo-file
apt-get install -y wodim
wodim --devices

echo sudo wodim -v -data dev=/dev/sr0  ...iso
echo sha512 ...iso
echo "dd if=/dev/sr0 bs=2048 | sha512"






apt-get install -y xdotool wmctrl


apt-get install cups-client -y
apt-get install tesseract-ocr-eng tesseract-ocr-deu -y


if YESNO "wine, wine64 und wine32:i386 installieren ???"
then

apt-get install -y wine
apt-get install -y wine64
apt-get install -y winetricks

echo dann \"winetricks d3dx9\" und \"winetricks vcrun2010\" eingeben mit dem Benutzer

dpkg --add-architecture i386
apt-get update
apt-get install wine32:i386

fi

apt-get install -y xdotool wmctrl


apt-get install cups-client -y
apt-get install tesseract-ocr-eng tesseract-ocr-deu -y

echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
echo "printer installieren"

nvidia-detect

# edit repository list
#==============================================================================
if YESNO "install nvidia-tesla-470-driver ???"
then
apt-get install nvidia-tesla-470-driver
fi

kvm-ok


# edit repository list
#==============================================================================
if YESNO "libvirtd starten und installieren?"
then
  systemctl start libvirtd
#  systemctl enable libvirtd
#  dann virt-manager starten
fi

if YESNO "user zur libvirt gruppe hunzufügen?"
then
  usermod -aG libvirt marc
fi


echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
#apt-get install mbrola mbrola-de* mbrola-us* mbrola-en1
apt-get install espeak espeak-ng

cp /usr/share/xsessions/*xorg* /usr/share/xsessions/TEST.desktop
apt-get purge libcupsfilters2*
