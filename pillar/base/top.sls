base:
  '*':
  - default
  - hostsfile
  - nfs

  'os:Ubuntu':
  - match: grain
  - glusterfs

  'os:Debian':
  - match: grain
  - sudoers
#
#  'os:Manjaro':
#  - match: grain
#  - glusterfs-xps

