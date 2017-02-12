#/bin/sh
indexmaker --output=/mrtg_data/index.html /etc/mrtg.cfg

/usr/bin/crontab /crontab.txt
crond -f -l 2 