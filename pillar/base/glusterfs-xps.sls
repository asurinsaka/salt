include:
  - glusterfs

glusterfs:
  client:
    volumes:
      glance:
        path: /var/lib/glance/images
        server: 192.168.2.207
        user: asurin
        group: asurin
    enabled: true
