PWD=$(pwd)

ln -s $PWD/sitrep /usr/bin/sitrep
mkdir -p /root/bin/
mkdir -p /var/log/sitrep
cp -av $PWD/sitrep-cron /root/bin/
echo "*/3   *   *   *   *  /root/bin/sitrep-cron" >> /var/spool/cron/crontabs/root
