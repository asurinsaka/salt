xps:
  ssh_auth.present:
    - user: asurin
    - source: salt://static/ssh_keys/xps.id_rsa.pub
    - config: '%h/.ssh/authorized_keys'

k54l:
  ssh_auth.present:
    - user: asurin
    - source: salt://static/ssh_keys/k54l.id_rsa.pub
    - config: '%h/.ssh/authorized_keys'

mpb15:
  ssh_auth.present:
    - user: asurin
    - source: salt://static/ssh_keys/mpb15.id_rsa.pub
    - config: '%h/.ssh/authorized_keys'

ctds:
  ssh_auth.present:
    - user: asurin
    - source: salt://static/ssh_keys/ctds.id_rsa.pub
    - config: '%h/.ssh/authorized_keys'

