base:
  '*':
  - default
  - hostsfile
  - nfs

  'os:Ubuntu':
  - match: grain
  - glusterfs-local

  'os:Manjaro':
  - match: grain
  - glusterfs-xps

