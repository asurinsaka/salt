# this is for kubernetes
/etc/docker/daemon.json:
  file.managed:
    - source: //static/docker/daemon.json
    - user: root
    - group: root
    - mode: 644
