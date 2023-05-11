from alpine

# Устанавливаем нужные либы
run apk update
run apk add openssh
run apk add ansible

workdir /root

copy . .

run cat config/docker_key.pub > authorized_keys
run mkdir .ssh
run mv authorized_keys .ssh

cmd top

expose 22