mkdir /media/hdd
rm /media/hdd/raspbian.zip
curl --progress-bar -L -o /media/hdd/raspbian.zip https://downloads.raspberrypi.org/raspbian_lite_latest
unzip -p /media/hdd/raspbian.zip | sudo dd of=/dev/sda bs=4M conv=fsync
mkdir /media/cardreader
mount /dev/sda1 /media/cardreader
touch /media/cardreader/ssh
umount /media/cardreader
