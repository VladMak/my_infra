from alpine

run apk update

# SSH installing
# run apk add openssh

workdir /root

run apk add gcc
run apk add libc-dev
run apk add readline-dev
run apk add zlib-dev
run apk add make

# Установка PostgreSQL 11
run wget https://ftp.postgresql.org/pub/source/v11.15/postgresql-11.15.tar.gz
run tar -xvf postgresql-11.15.tar.gz
run ./postgresql-11.15/configure
run make world
run make install-world

# Добавляем пользователя
run adduser --disabled-password postgres
run mkdir /usr/local/pgsql/data
run chown postgres /usr/local/pgsql/data
run su postgres -c "/usr/local/pgsql/bin/initdb -D /usr/local/pgsql/data"
run echo "listen_addresses = '0.0.0.0'" >> /usr/local/pgsql/data/postgresql.conf
run echo "host    all             all             172.18.0.1/32            trust" >> /usr/local/pgsql/data/pg_hba.conf

cmd su postgres -c "/usr/local/pgsql/bin/postgres -D /usr/local/pgsql/data/"

expose 5432