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

## Commandes sons :

`arecord -D plughw:1,0 -d` temps d'enregistrement ` ` nom du fichier `.wav` Pour enregistrer.

`aplay test.wav` Pour jouer.

## Changer les priorités :

`nice -n ` priorité (entre -20 priorité absolue et 19) ` ` chemin de fichier

Exemple :

`nice -n 19 chromium-browser`

## Mettre a jour le raspberry :

### Mise à jour rapide :

`sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y install ca-certificates git-core && sudo wget https://raw.github.com/Hexxeh/rpi-update/master/rpi-update -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update && sudo rpi-update && reboot`

### Mise à jour par étape :

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

## Installer Watchdog :

Watchdog permet de rebooter le raspberry quand il est planté.

Notice [ici](https://www.framboise314.fr/watchdog-pour-mon-raspberry-pi/).

## Installer Lirc :

Lirc permet de dupliquer les télécommandes infra rouge.

Notice [ici](https://anderson69s.com/2015/08/04/raspberry-pi-dupliquer-sa-telecommande-ir/).

## Installer Castnow :

Castnow permet de caster sur un appareil avec un raspberry

Notice [ici](https://github.com/xat/castnow).

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
