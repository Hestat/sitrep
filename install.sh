PWD=$(pwd)

ln -s $PWD/sitrep /usr/bin/sitrep
mkdir -p /root/bin/
cp -av $PWD/sitrep-cron /root/bin/
echo "1/5 * * * * root /root/bin/sitrep-cron" >> /etc/crontab
