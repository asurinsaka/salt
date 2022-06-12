base:
  '*':
  - default
  - hostsfile
  - nfs

  'os:Ubuntu':
  - match: grain
  - glusterfs
#
#  'os:Manjaro':
#  - match: grain
#  - glusterfs-xps

