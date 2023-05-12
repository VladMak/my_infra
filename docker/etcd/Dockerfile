from alpine

workdir /root

run apk update

run git clone -b v3.5.0 https://github.com/etcd-io/etcd.git
run cd etcd
run ./build.sh
run export PATH="$PATH:`pwd`/bin"

cmd top