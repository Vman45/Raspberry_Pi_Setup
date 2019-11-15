# Raspberry Pi Commands

Useful commands for Raspberry Pi

## Installing a package

`sudo apt-get install ` {Package}

## Uninstalling a package

`sudo apt-get purge ` {Package}

## Examples of packages

`vlc` Multimedia player

`mc` File manager

`leocad` Lego 3D conseption software

`cantab-screensaver` Screensaver for Raspberry Pi

`gparted` Partition Editor

`numlockx` Numeric keypad lock on start-up

`tmux` Window getionary

`pylint` Seeker of python errors

## Install a python library

`sudo pip` {Python version} ` install ` {Python library}

## Download a file

`wget ` {Url of the file}

## Make a file executable

`sudo chmod +x /` {Path} `/` {Filename}

## Edit a file

`sudo nano /` {Path} `/` {Filename}

## Shutdown option

`sudo halt` To shutdown the Raspberry Pi

`sudo reboot` To reboot the Raspberry Pi

## Sound commands

`arecord -D plughw:1,0 -d` {Recording time} ` ` {Filename} `.wav` To record

`aplay test.wav` To play

## Changing priorities

`nice -n ` {Priority} ` ` {Command}

## Update the Raspberry Pi

### Quick update

`sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y install ca-certificates git-core && sudo wget https://raw.github.com/Hexxeh/rpi-update/master/rpi-update -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update && sudo rpi-update && reboot`

### Step-by-step update

```
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y install ca-certificates git-core
sudo wget https://raw.github.com/Hexxeh/rpi-update/master/rpi-update -O /usr/bin/rpi-update
sudo chmod +x /usr/bin/rpi-update
sudo rpi-update
reboot
```

## Install Octoprint

Instruction [here](https://discourse.octoprint.org/t/setting-up-octoprint-on-a-raspberry-pi-running-raspbian/2337)

## Install Curaengine

Instruction [here](http://docs.octoprint.org/en/master/bundledplugins/cura.html)

## Install Alexa

Instruction [here](https://github.com/alexa-pi/AlexaPi)

## Install Google Assistant

Instruction [here](https://github.com/shivasiddharth/GassistPi)

## Install Opencv

Instruction [here](https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/)

## Install Oh My Zsh

Instruction [here](https://github.com/robbyrussell/oh-my-zsh)

## Install Watchdog

Instruction [here](https://www.domoticz.com/wiki/Setting_up_the_raspberry_pi_watchdog)

## Install Lirc

Instruction [here](https://www.instructables.com/id/Install-and-Configure-Linux-Infrared-Remote-Contro/)

## Install Castnow

Instruction [here](https://github.com/xat/castnow)

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

`gdfstool auth -a /home/pi/gdfs.creds ` {Your token}

Create a `Google_Drive` dir

`sudo mkdir /media/pi/Google_Drive`

And mount your google drive

`sudo gdfs -o allow_other /home/pi/gdfs.creds /media/pi/Google_Drive`

## Mounting your Freebox

Create a `Freebox` dir

`sudo mkdir /media/pi/Freebox`

And mount your freebox

`sudo mount -t cifs //mafreebox.freebox.fr/Server\ Freebox/  /media/pi/Freebox -o user=` {Your user} `,password=` {Your password} `,uid=1000,gid=1000,rw,sec=ntlm,vers=1.0`
