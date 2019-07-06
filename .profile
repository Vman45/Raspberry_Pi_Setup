# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

alias ga_start="sudo systemctl start Google_Assistant-ok-google.service"
alias ga_restart="sudo systemctl restart Google_Assistant-ok-google.service"
alias ga_stop="sudo systemctl stop Google_Assistant-ok-google.service"
alias ga_debug='sudo systemctl stop Google_Assistant-ok-google.service && /home/pi/.env/bin/python -u /home/pi/Google_Assistant/src/main.py'
alias octoprint='~/OctoPrint/venv/bin/octoprint serve'
alias mount_freebox='sudo mount -t cifs //mafreebox.freebox.fr/Server\ Freebox/  /media/pi/Freebox -o user=freebox,password=Freebox4K,uid=1000,gid=1000,rw,sec=ntlm,vers=1.0'
alias mount_gdrive='sudo gdfs -o allow_other /home/pi/Documents/API/gdfs.creds /media/pi/Google_Drive'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias big_update='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y install ca-certificates git-core && sudo wget https://raw.github.com/Hexxeh/rpi-update/master/rpi-update -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update && sudo rpi-update && sudo reboot'
