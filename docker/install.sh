apt-get update
apt-get upgrade
apt-get install -y wget
wget https://repo.postgrespro.ru/std-15/keys/pgpro-repo-add.sh
sh pgpro-repo-add.sh
apt-get install -y postgrespro-std-15