
mkdir /data
mkdir /external
mkdir /external/hdd

cd /data
git clone https://github.com/seekwhencer/Playlist-Automation.git
mv Playlist-Automation radio

apt-get install icecast2 mpd mpc apache2 php7 ntp

mv /etc/mpd.config /data/radio/scripts/mpd.config
cp /data/radio/scripts/nfs.conf /etc/apache2/sites-enabled/dcm1.conf

a2enmod rewrite

chown -R pi:pi ./data
chmod -R 777 ./data
