if [ "$EUID" -ne 0 ]
  then echo "Script must be ran as root"
  exit
fi

sudo apt-get update # Updates system 
# Requirements: 
sudo apt-get install -y libffi-dev libssl-dev python3-dev python3 python3-pip | error "Failed to install dependancies needed!"
# Installs via pip
sudo pip3 install docker-compose | error "Failed to install docker compose via Pip "
echo 'Installation is complete!'
exit 
