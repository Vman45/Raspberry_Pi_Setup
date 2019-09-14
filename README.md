# Commandes raspberry

Useful commands for Raspberry Pi 3

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

`aplay test.wav` To play.

## Changing priorities

`nice -n ` {Priority} ` ` {Command}

## Update the Raspberry Pi:

### Quick update:

`sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y install ca-certificates git-core && sudo wget https://raw.github.com/Hexxeh/rpi-update/master/rpi-update -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update && sudo rpi-update && reboot`

### Step-by-step update :

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

## Installer Octoprint :

Octoprint permet de faire fonctionner une imprimante 3D.

Notice [ici](https://discourse.octoprint.org/t/setting-up-octoprint-on-a-raspberry-pi-running-raspbian/2337).

## Installer Curaengine :

Curaengine permet de trancher les pièces.

Notice [ici](http://docs.octoprint.org/en/master/bundledplugins/cura.html)

## Installer Alexa :

Alexa permet d'effectuer des actions par reconnaissance vocale.

Notice [ici](https://github.com/alexa-pi/AlexaPi).

## Installer Google Assistant :

Google Assistant permet d'effectuer des actions par reconnaissance vocale.

Notice [ici](https://github.com/MPi3D/Google_assistant).

## Installer Opencv :

Opencv permet de detecter des objets de les traquer...

Notice [ici](https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/)

## Installer Oh My Zsh :

Oh My Zsh est une extension pour le terminal destiné au dévelopeurs.

Notice [ici](https://github.com/robbyrussell/oh-my-zsh)

## Installer Watchdog :

Watchdog permet de rebooter le raspberry quand il est planté.

Notice [ici](https://www.framboise314.fr/watchdog-pour-mon-raspberry-pi/).

## Installer Lirc :

Lirc permet de dupliquer les télécommandes infra rouge.

Notice [ici](https://anderson69s.com/2015/08/04/raspberry-pi-dupliquer-sa-telecommande-ir/).

## Installer Castnow :

Castnow permet de caster sur un appareil avec un raspberry

Notice [ici](https://github.com/xat/castnow).

## Monter google drive sur son RPI :

Installez gdrivefs :

`sudo pip install gdrivefs`

Demandez une autorisation :

`gdfstool auth -u`

`gdfstool auth -a /home/pi/gdfs.creds ` votre token

`sudo mkdir /media/pi/Google_Drive`

`sudo gdfs -o allow_other /home/pi/gdfs.creds /media/pi/Google_Drive`

## Monter sa freebox sur son RPI :

`sudo mkdir /media/pi/Freebox`

`sudo mount -t cifs //mafreebox.freebox.fr/Server\ Freebox/  /media/pi/Freebox -o user=` votre utilisateur `,password=` votre mot de passe `,uid=1000,gid=1000,rw,sec=ntlm,vers=1.0`

## Changer de serveur raspbian :

Modifiez `/etc/apt/sources.list` :

`sudo nano /etc/apt/sources.list`

Puis modifier l'adresse par une autre que vous trouverez [ici](http://www.raspbian.org/RaspbianMirrors).

Et faites un update :

`sudo apt-get update`

## Enlever le thermomètre de surchauffe :

![Thermomètre](Thermomètre.png)

Allez dans `/boot/config.txt` :

`sudo nano /boot/config.txt`

Et ajouter :

`avoid_warnings=1`

## [Raspbian tout un tas de trucs…](https://www.framboise314.fr/raspbian-tout-un-tas-de-trucs/)
