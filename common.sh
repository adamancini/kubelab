cat <<EOF >/etc/apt/sources.list
deb http://us.archive.ubuntu.com/ubuntu xenial main restricted universe multiverse
# deb-src http://us.archive.ubuntu.com/ubuntu xenial main restricted universe multiverse
deb http://us.archive.ubuntu.com/ubuntu xenial-updates main restricted universe multiverse
# deb-src http://us.archive.ubuntu.com/ubuntu xenial-updates main restricted universe multiverse
deb http://us.archive.ubuntu.com/ubuntu xenial-backports main restricted universe multiverse
# deb-src http://us.archive.ubuntu.com/ubuntu xenial-backports main restricted universe multiverse
EOF

apt-get update
apt-get install -y apt-transport-https ca-certificates ntpdate
ntpdate -s time.nist.gov
