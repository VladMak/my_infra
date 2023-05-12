from alpine

run apk update

# SSH installing
run apk add openssh
run ssh-keygen -A
run mkdir /root/.ssh
run touch authorized_keys

copy docker_key.pub /root

run cat /root/docker_key.pub >> /root/.ssh/authorized_keys

workdir /root

cmd exec /usr/sbin/sshd -D -e "$@"

expose 22