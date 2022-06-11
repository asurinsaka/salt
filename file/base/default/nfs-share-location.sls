create_share_folder:
  file.directory:
    - name: /srv/nfs
    - user: asurin
    - group: asurin
    - mode: 755
    - makedirs: True

