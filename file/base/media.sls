/srv/nfs/media:
  file.directory:
    - makedirs: true
    - mode: 777
    - user: asurin
    - group: asurin

/home/root/bin/chmod_media.sh:
  file.managed:
    - makedirs: true
    - mode: 755
    - source: salt://static/chmod_media.sh
  cron.present:
    - user: root
    - minute: '*/5'

