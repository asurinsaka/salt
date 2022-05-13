glusterfs:
  server:
    peers:
    - xps
    - k54l
    - E71
    # - sony
    - u460
    # - h430
    - 220s
    - o790m
    volumes:
       glance:
         storage: /srv/glusterfs/glance
         replica: 2
         bricks:
         - xps:/srv/glusterfs/glance
         - k54l:/srv/glusterfs/glance
         - E71:/srv/glusterfs/glance
         # - sony:/srv/glusterfs/glance
         - u460:/srv/glusterfs/glance
         # - h430:/srv/glusterfs/glance
         - 220s:/srv/glusterfs/glance
         - o790m:/srv/glusterfs/glance
    enabled: true
  
  client:
    volumes:
      glance:
        path: /var/lib/glance/images
        server: 192.168.2.207
        user: asurin
        group: asurin
    enabled: true
