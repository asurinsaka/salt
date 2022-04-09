create_mount_point:
  file.directory:
    - name: /mnt/nfs

mount_dat:
  mount.mounted:
    - name: /mnt/nfs
    - device: o780:/srv/nfs
    - mkmnt: True
    - fstype: nfs
    - require:
      - file: create_mount_point
