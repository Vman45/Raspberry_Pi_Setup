# Commandes raspberry

Commandes utiles pour raspberry pi 3 modèle B.

## Installer un paquet :

Tapez `sudo apt-get install ` nom du paquet.

Exemple :

`sudo apt-get install vlc`

## Désinstaller un paquet :

Tapez `sudo apt-get purge ` nom du paquet.

Exemple :

`sudo apt-get purge vlc`

## Exemples de paquet :

`vlc` Lecteur de multimedia.

`mc` Gestionnaire de fichier.

`leocad` Logitiel de conseption lego en 3D.

`cantab-screensaver` Economiseur d'ecran pour raspberry.

`gparted` Editeur de partition.

`numlockx` Verrouilleur du pavé numérique au démarrage.

## Installer une librairie python :

Tapez `sudo pip` version de python (2 ou 3) ` install ` nom de la librairie python.

Exemple :

`sudo pip3 install pygame`

## Modifier un fichier :

Tapez `sudo nano /` chemin `/` nom du fichier.

Exemple :

`sudo nano /home/pi/exemple.py`

Pour enregistrer :

`Ctrl x`, `O` ou `Y` et `Entrée`

## Shutdown option :

`sudo halt` Pour éteindre le raspberry.

`reboot` Pour rebooter le raspberry.

## Mettre a jour le raspberry :

### Mise à jour rapide :

`sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y install ca-certificates git-core && sudo wget https://raw.github.com/Hexxeh/rpi-update/master/rpi-update -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update && sudo rpi-update && reboot`

### Mise à jour par étape :

`sudo apt-get update`

`sudo apt-get -y upgrade`

`sudo apt-get -y dist-upgrade`

`sudo apt-get -y install ca-certificates git-core`

`sudo wget https://raw.github.com/Hexxeh/rpi-update/master/rpi-update -O /usr/bin/rpi-update`

`sudo chmod +x /usr/bin/rpi-update`

`sudo rpi-update`

`reboot` 

## Changer de serveur raspbian :

Modifiez /etc/apt/sources.list :

`sudo nano /etc/apt/sources.list`

Puis modifier l'adresse par une autre que vous trouverez [ici](http://www.raspbian.org/RaspbianMirrors).

Et faites un update :

`sudo apt-get update`

## Enlever le thermomètre de surchauffe :


