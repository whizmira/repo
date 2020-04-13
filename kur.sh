apt-get update;
apt-get dist-upgrade -y;
apt-get autoremove --purge -y; 
apt-get clean;
wget -q -O - https://raw.githubusercontent.com/whizmira/repo/master/gpg.key | apt-key add -;
echo "deb http://debian.erlyvideo.org binary/" > /etc/apt/sources.list.d/erlyvideo.list;
apt-get update;
apt-get -y install flussonic flussonic-python;
cd /etc/flussonic/;
wget -q -O - https://raw.githubusercontent.com/whizmira/repo/master/license.txt;
service flussonic start

