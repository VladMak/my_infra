from alpine

# Устанавливаем нужные либы
run apk update
run apk add openssh
run apk add ansible

workdir /root


copy ./config/docker_key.pub /root
copy ./config/docker_key /root

run mkdir .ssh

run mv /root/docker_key /root/.ssh
run mv /root/docker_key.pub /root/.ssh

# run ssh-keygen -t rsa -f /root/.ssh/id_rsa -N ""

cmd top

expose 22