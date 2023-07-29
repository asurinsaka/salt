create_mount_point:
  file.directory:
    - name: /mnt/o9020

mount_dat:
  mount.mounted:
    - name: /mnt/o9020
    - device: o9020:/srv/nfs
    - mkmnt: True
    - fstype: nfs
    - require:
      - file: create_mount_point
