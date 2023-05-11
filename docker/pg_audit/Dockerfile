from ubuntu
#copy . /root
workdir /root

run apt-get update
run apt-get upgrade
run apt-get install -y systemd
run apt-get install -y wget
run apt-get install -y iproute2
run wget https://repo.postgrespro.ru/std-15/keys/pgpro-repo-add.sh
run sh pgpro-repo-add.sh
run apt-get install -y postgrespro-std-15

run mkdir /var/lib/postgresql/data
run chown postgres /var/lib/postgresql/data
run su postgres -c "initdb -D /var/lib/postgresql/data"

user postgres
workdir /var/lib/postgresql
copy ./run.sh /var/lib/postgresql

user root
run chown postgres /var/lib/postgresql/run.sh
run chmod +x /var/lib/postgresql/run.sh

cmd ["su", "postgres", "-c", "pg_ctl -D /var/lib/postgresql/data start"]

user postgres
expose 5433:5432