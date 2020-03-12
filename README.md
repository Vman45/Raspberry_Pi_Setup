# Raspberry Pi Commands

Useful commands for [Raspberry Pi](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/)

[![Raspberry Pi](/Raspberry_Pi.jpg)](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/)

## Installing a package

`sudo apt-get install {package}`

## Examples of packages

`vlc` Multimedia player

`mc` File manager

`leocad` Lego 3D conseption software

`gparted` Partition Editor

`tmux` Window getionary

`pylint` Seeker of python errors

## Install a python library

`sudo pip{python version} install {python library}`

## Update the Raspberry Pi

```
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y full-upgrade
sudo apt-get -y dist-upgrade
sudo apt-get install rpi-update
sudo rpi-update
reboot
```

## Create ssh key

Create `.ssh` dir

`mkdir ~/.ssh`

Create ssh key

`ssh-keygen`

Create a `authorized_keys` file

`touch ~/.ssh/authorized_keys`

Make `.ssh` and `authorized_keys` executable

`chmod 700 ~/.ssh`

`chmod 600 ~/.ssh/authorized_keys`

And write `id_rsa.pub` in it

`cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys`

Copy `id_rsa` on your computer client

You can remove `id_rsa` and `id_rsa.pub`

`rm ~/.ssh/id_rsa ~/.ssh/id_rsa.pub`

And you can connect to the computer with the `id_rsa`

If you want to desactive the login by password go in `/etc/ssh/sshd_config`

`sudo nano /etc/ssh/sshd_config`

And add `PasswordAuthentication no`

## Mount your Google Drive

Install `gdrivefs`

`sudo pip2 install oauth2client gdrivefs`

Ask for an authorization

`gdfstool auth -u`

Save your token

`gdfstool auth -a ~/gdfs.creds {Your token}`

Create a `Google_Drive` dir

`sudo mkdir /media/pi/Google_Drive`

And mount your google drive

`sudo gdfs -o allow_other ~/gdfs.creds /media/pi/Google_Drive`

## Mounting your Freebox

Create a `Freebox` dir

`sudo mkdir /media/pi/Freebox`

And mount your freebox

`sudo mount -t cifs //mafreebox.freebox.fr/Server\ Freebox/  /media/pi/Freebox -o user={Your user},password={Your password},uid=1000,gid=1000,rw,sec=ntlm,vers=1.0`

## Installation guides

### Install Octoprint

Instruction [here](https://discourse.octoprint.org/t/setting-up-octoprint-on-a-raspberry-pi-running-raspbian/2337)

### Install Curaengine

Instruction [here](http://docs.octoprint.org/en/master/bundledplugins/cura.html)

### Install Alexa

Instruction [here](https://github.com/alexa-pi/AlexaPi)

### Install Google Assistant

Instruction [here](https://github.com/shivasiddharth/GassistPi)

### Install Opencv

Instruction [here](https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/)

### Install Oh My Zsh

Instruction [here](https://github.com/robbyrussell/oh-my-zsh)

### Install Watchdog

Instruction [here](https://www.domoticz.com/wiki/Setting_up_the_raspberry_pi_watchdog)

### Install Lirc

Instruction [here](https://www.instructables.com/id/Install-and-Configure-Linux-Infrared-Remote-Contro/)

### Install Castnow

Instruction [here](https://github.com/xat/castnow)
