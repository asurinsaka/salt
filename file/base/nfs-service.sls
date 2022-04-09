create_share_folder:
  file.directory:
    - name: /srv/nfs
    - user: asurin
    - group: asurin
    - mode: 755
    - makedirs: True

nfs-service:
  nfs_export.present:
    - name:     '/srv/nfs'
    - hosts:    '192.168.2.0/24'
    - options:
      - 'rw'
    - require:
      - file: create_share_folder
