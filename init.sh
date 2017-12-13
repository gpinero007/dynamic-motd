# install
apt-get install lsb-release
apt-get install figlet
apt-get install update-motd
# delete default
rm -r /etc/update-motd.d/
# create new
mkdir /etc/update-motd.d/
# create dynamic files
cp 00-header /etc/update-motd.d/ ; cp 10-sysinfo /etc/update-motd.d/ ; cp 90-footer /etc/update-motd.d/
chmod +x /etc/update-motd.d/*
# remove MOTD file
rm /etc/motd.dynamic
rm /etc/motd
ln -s /var/run/motd /etc/motd
