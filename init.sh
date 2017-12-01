# install lsb-release 
apt-get install lsb-release
# install figlet to enable ASCII art
apt-get install figlet
# install update-motd software
apt-get install update-motd
# delete default directory
rm -r /etc/update-motd.d/
# create new directory
mkdir /etc/update-motd.d/
# create dynamic files
touch /etc/update-motd.d/00-header ; touch /etc/update-motd.d/10-sysinfo ; touch /etc/update-motd.d/90-footer
# make files executable
chmod +x /etc/update-motd.d/*
# remove MOTD file
rm /etc/motd.dynamic
