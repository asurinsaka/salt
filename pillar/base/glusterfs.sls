glusterfs:
  server:
    peers:
    - xps
    - k54l
    - E71
    - sony
    - u460
    volumes:
       glance:
         storage: /srv/glusterfs/glance
         replica: 2
         bricks:
         - xps:/srv/glusterfs/glance
         - k54l:/srv/glusterfs/glance
         - E71:/srv/glusterfs/glance
         - sony:/srv/glusterfs/glance
         - u460:/srv/glusterfs/glance
    enabled: true
  
  client:
    volumes:
      glance:
        path: /var/lib/glance/images
        server: 192.168.2.207
        user: asurin
        group: asurin
    enabled: true
