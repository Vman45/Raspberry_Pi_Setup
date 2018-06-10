# Commandes raspberry

Commandes utiles pour raspberry pi 3 modèle B.

## Changer de serveur raspbian :

Modifiez /etc/apt/sources.list :

`sudo nano /etc/apt/sources.list`

Puis modifier l'adresse par une autre que vous trouverez [ici](http://www.raspbian.org/RaspbianMirrors).

Et faites un update :

`sudo apt-get update`

## installer une librairie python :

Tapez `sudo pip` version de python (2 ou 3) ` install ` nom de la librairie python.

Exemple :

`sudo pip3 install pygame`
