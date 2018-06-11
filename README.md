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

## Installer une librairie python :

Tapez `sudo pip` version de python (2 ou 3) ` install ` nom de la librairie python.

Exemple :

`sudo pip3 install pygame`

## Modifier un fichier :

Tapez `sudo nano /` chemin `/` nom du fichier.

Exemple :

`sudo nano /home/pi/exemple.py`

## Changer de serveur raspbian :

Modifiez /etc/apt/sources.list :

`sudo nano /etc/apt/sources.list`

Puis modifier l'adresse par une autre que vous trouverez [ici](http://www.raspbian.org/RaspbianMirrors).

Et faites un update :

`sudo apt-get update`
